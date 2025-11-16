import 'dart:async';
import 'dart:io' as io;
import 'dart:math';

import 'package:async/async.dart';
import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:expressions/expressions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_async_utils/flutter_async_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:msgserve_client/src/msgserve_client.dart';
import 'package:msgserve_client/src/msgserve_data.dart';
import 'package:msgserve_client/src/msgserve_event.dart';
import 'package:msgserve_client/src/msgserve_opts.dart';
import 'package:msgserve_shared/msgserv_shared.dart';
import 'package:quiver/core.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';

part 'msgserve_bloc.freezed.dart';
part 'msgserve_bloc.g.dart';

final _logger = Logger('msgserv_bloc');

/// Combination of all closed/seen messages and the current stored data/state.
/// TODO: Find a better name
class _NewData {
  _NewData({
    required this.closedMessages,
    required this.data,
  });
  final Set<String> closedMessages;
  final MsgServeData data;
}

class MsgServeCampaignDisplay {
  MsgServeCampaignDisplay({
    required this.campaign,
    required this.expressionContext,
  });

  final MsgServeCampaign campaign;
  final Map<String, Object> expressionContext;

  @override
  String toString() {
    return 'MsgServCampaignDisplay{campaign=${campaign.key}}';
  }
}

@freezed
sealed class CampaignClosed with _$CampaignClosed {
  const factory CampaignClosed({
    required DateTime date,
    required String action,
  }) = _CampaignClosed;

  factory CampaignClosed.fromJson(Map<String, dynamic> json) =>
      _$CampaignClosedFromJson(json);
}

typedef ExpressionContextProvider = Future<Map<String, Object>> Function();

final msgServeProvider = Provider<MsgServeBloc>(
    (ref) => throw Exception('must be overloaded by app.'));

class MsgServeBloc with StreamSubscriberBase {
  MsgServeBloc({
    this.contextProvider = _defaultContextProvider,
    required this.opts,
  }) {
    _logger.fine('Create new MsgServBloc.');
    handle(events.listen((event) {
      _logger.fine('handling event $event');
      if (event is MsgServeEventDismissed) {
        _logger.finer('setting ${event.campaign.id} as dismissed.');
        _client.store.update((data) => data.copyWith(seen: [
              ...data.seen,
              MsgServeHistory(
                campaignId: event.campaign.id.toString(),
                campaignKey: event.campaign.key,
                closedAt: clock.now(),
                action: event.action.key,
              ),
            ]));
      }
    }));
    _appEvents.stream.listen((event) async {
      // Rx.combineLatest2(_seenMessages, _appEvents.stream,
      //     (_NewData a, AppEvent b) => MapEntry(a, b)).listen((event) async {
      final data = _seenMessages.valueOrNull;
      if (data == null) {
        _logger.severe('No seenMessages data yet?');
        return;
      }
      await _handleEvent(data, event);
    });
  }

  late final _client = MsgServeClient(opts: opts);

  late final ValueStream<_NewData> _seenMessages =
      _client.store.onValueChangedAndLoad
          .map((event) {
            return _NewData(
              closedMessages: event.seen
                  .where((e) => e.closedAt != null)
                  .map((e) => e.campaignId)
                  .toSet(),
              data: event,
            );
          })
          .publishValueAsync()
          .autoConnect(connection: (sub) => handle(sub))
        ..doOnDone(() {
          _logger.finer('Done?!');
        });
  final Map<String, ValueStream<MsgServeCampaignDisplay?>> _campaignFor = {};
  final Map<String, ValueStream<List<MsgServeCampaignDisplay>>> _campaignsFor =
      {};

  final MsgServeOpts opts;
  final ExpressionContextProvider contextProvider;
  final StreamController<MsgServeEvent> _events = StreamController.broadcast();
  Stream<MsgServeEvent> get events => _events.stream;
  final StreamController<AppEvent> _appEvents = StreamController.broadcast();
  late final StreamConsumer<AppEvent> appEventsConsumer = _appEvents;

  static Future<Map<String, Object>> _defaultContextProvider() =>
      Future.value({});

  Future<void> reloadConfigFromServer() async {
    await _client.reloadConfigFromServer();
  }

  // Future<void> handledAction(
  //     MsgServCampaignDisplay campaignDisplay, String action) async {
  //   await store.update((data) {
  //     if (data == null) {
  //       throw ArgumentError('data must not be null.');
  //     }
  //
  //     final campaign = campaignDisplay.campaign;
  //     return data.copyWith(
  //       closedCampaigns: {
  //         ...data.closedCampaigns,
  //         campaign.id: [
  //           ...?data.closedCampaigns[campaign.id],
  //           CampaignClosed(
  //             date: clock.now().toUtc(),
  //             action: action,
  //           ),
  //         ]
  //       },
  //     );
  //   });
  // }

  Stream<MsgServeCampaignDisplay?> findCampaign({
    required String label,
    required CampaignType type,
  }) =>
      _campaignFor['t$type:$label'] ??= _seenMessages
          .doOnData((event) {
            _logger
                .finer('findCampaign(label:$label,type:$type) - data: $event');
          })
          .asyncMap<MsgServeCampaignDisplay?>(
            (data) async => await _findNextCampaign(
              data: data.data,
              seenMessages: data.closedMessages,
              label: label,
              type: type,
            ),
          )
          // .where((event) => event != null)
          // .cast<MsgServCampaignDisplay>()
          .publishValueAsync()
          .autoConnect();

  Stream<List<MsgServeCampaignDisplay>> findAllCampaigns({
    required String label,
    required CampaignType type,
  }) =>
      _campaignsFor['t$type:$label'] ??= _seenMessages
          .doOnData((event) {
            _logger
                .finer('findCampaign(label:$label,type:$type) - data: $event');
          })
          .asyncMap<List<MsgServeCampaignDisplay>>(
            (data) async => await _findCampaigns(
              data: data.data,
              seenMessages: data.closedMessages,
              label: label,
              type: type,
            ).toList(),
          )
          // .where((event) => event != null)
          // .cast<MsgServCampaignDisplay>()
          .publishValueAsync()
          .autoConnect();

  Stream<MsgServeCampaignDisplay> triggeredCampaigns(
      {required String label, required CampaignType type}) {
    return events
        .whereType<MsgServeCampaignTriggered>()
        .asyncMap((event) async {
      if (!type.matches(event.campaign)) {
        return null;
      }
      final campaign = event.campaign;
      final newData = _seenMessages.valueOrNull;
      if (newData == null) {
        _logger.warning('_seenMessages was null - must not happen.');
        return null;
      }
      final now = clock.now().toUtc();
      final exprContext = await _createExpressionContextForConditional(
        newData.data,
        newData.closedMessages,
        context: {
          'event': event.appEvent,
        },
        now: now,
        type: type,
        label: label,
        triggered: true,
      );
      _logger.info('evaluating campaign expression with $exprContext');
      final result = await _evaluateCampaignExpression(
        ExpressionType.condition,
        campaign,
        expressionContext: exprContext,
      );
      if (result is bool && !result) {
        return null;
      }
      _logger.fine('TRIGGER: Found campaign. ${event.campaign.key}');
      return MsgServeCampaignDisplay(
        campaign: campaign,
        expressionContext: exprContext,
      );
    }).whereType<MsgServeCampaignDisplay>();
  }

  Stream<MsgServeCampaignDisplay> _findCampaigns({
    required MsgServeData data,
    required Set<String> seenMessages,
    required String label,
    required CampaignType type,
  }) async* {
    final campaigns = data.lastConfig?.campaigns;
    if (campaigns == null) {
      return;
    }
    final now = clock.now().toUtc();
    final exprContext = await _createExpressionContextForConditional(
      data,
      seenMessages,
      type: type,
      label: label,
      now: now,
      triggered: false,
      context: {},
    );
    for (final campaign in campaigns) {
      if (!now.isInRange(campaign.dateStart, campaign.dateEnd)) {
        continue;
      }
      if (!type.matches(campaign)) {
        continue;
      }
      final result = await _evaluateCampaignExpression(
        ExpressionType.condition,
        campaign,
        expressionContext: exprContext,
      );
      if (result is bool && !result) {
        continue;
      }
      _logger.fine('Found campaign. ${campaign.key}');
      yield MsgServeCampaignDisplay(
        campaign: campaign,
        expressionContext: exprContext,
      );
    }
  }

  Future<MsgServeCampaignDisplay?> _findNextCampaign({
    required MsgServeData data,
    required Set<String> seenMessages,
    required String label,
    required CampaignType type,
  }) async {
    return _findCampaigns(
            data: data, seenMessages: seenMessages, label: label, type: type)
        .firstOrNull;
  }

  Future<Object?> _evaluateCampaignExpression(
    ExpressionType type,
    MsgServeCampaign campaign, {
    required Map<String, Object> expressionContext,
  }) async {
    final expr = campaign.getParsedExpressionType(type);
    if (expr == null) {
      return null;
    }
    const evaluator = MapAwareEvaluator();
    try {
      final dynamic result = evaluator.eval(
        expr,
        <String, Object>{...expressionContext, 'this': campaign},
      );
      _logger.finest('Evaluated expression ($result): $expr '
          'with $expressionContext');
      // if (result is bool && !result) {
      //   return false;
      // }
      return result;
    } catch (e, stackTrace) {
      _logger.severe(
          'Error while evaluating expression ${campaign.filter}. Skipping.',
          e,
          stackTrace);
      return false;
    }
  }

  Future<Map<String, Object>> _createExpressionContextForConditional(
    MsgServeData data,
    Set<String> seenMessages, {
    required DateTime now,
    required CampaignType type,
    required String label,
    required bool triggered,
    required Map<String, Object> context,
  }) async {
    return _createExpressionContext(
      data,
      seenMessages,
      {
        'label': label,
        'type': type,
        ...context,
      },
      now: now,
      triggered: triggered,
    );
  }

  Future<Map<String, Object>> _createExpressionContext(
    MsgServeData data,
    Set<String> seenMessages,
    Map<String, Object> context, {
    required DateTime now,
    required bool triggered,
  }) async {
    final days = data.firstLaunch.difference(clock.now()).abs().inDays;
    final pi = await _client.opts.getPackageInfo();
    return {
      'now': now,
      'triggered': triggered,
      'user': {
        'days': days,
      },
      'packageInfo': {
        'version': pi.version,
        'buildNumber': int.tryParse(pi.buildNumber),
        'packageName': pi.packageName,
      },
      'seen': (Object obj) {
        _logger.fine('seen($obj)? $seenMessages');
        if (obj is MsgServeCampaign) {
          return seenMessages.contains(obj.key);
        } else if (obj is String) {
          return seenMessages.contains(obj);
        }
        _logger.severe('Invalid argument for seen() function: $obj');
        return false;
      },
      'action': (String campaignKey) {
        final result = data.seen
            .lastWhereOrNull((element) =>
                element.campaignKey == campaignKey && element.action != null)
            ?.action;
        _logger.fine('finding action for $campaignKey = $result');
        return result;
      },
      ...(await contextProvider()),
      ...context,
    };
  }

  Future<void> triggerCampaignAction({
    required MsgServeCampaignDisplay campaign,
    required final MsgServeAction action,
  }) async {
    _logger.fine('triggering campaign action');
    Uri? uri;
    if (action is MsgServeActionWithUrl) {
      final url = action.url;
      if (url != null) {
        uri = Uri.parse(url);
      }
    }
    if (uri != null) {
      await triggerAction(MsgServeEventTriggerCustom(
        campaign: campaign.campaign,
        action: action,
        uri: uri,
      ));
    }

    publishEvent(
      MsgServeEventDismissed(campaign: campaign.campaign, action: action),
    );
  }

  Future<void> triggerAction(MsgServeEventTriggerCustom event) async {
    final uri = event.uri;
    if (uri.scheme == 'msgserve') {
      // TODO
    } else {
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      )) {
        _logger.warning('Unable to launch url $uri');
      }
    }
  }

  Future<void> _handleEvent(_NewData data, AppEvent event) async {
    _logger.fine('_handleEvent($data, $event)');
    final now = clock.now().toUtc();
    final exprContext = await _createExpressionContext(
      data.data,
      data.closedMessages,
      {
        'event': event,
      },
      now: now,
      triggered: true,
    );
    for (final campaign
        in data.data.lastConfig?.campaigns ?? <MsgServeCampaign>[]) {
      final trigger = campaign.trigger;
      if (trigger == null) {
        continue;
      }
      if (!now.isInRange(campaign.dateStart, campaign.dateEnd)) {
        continue;
      }
      final result = await _evaluateCampaignExpression(
        ExpressionType.trigger,
        campaign,
        expressionContext: exprContext,
      );
      if (result is bool && result) {
        _logger.finer('campaign triggered.');
        publishEvent(MsgServeCampaignTriggered(
          appEvent: event,
          campaign: campaign,
        ));
      } else {
        _logger.finer('campaign not triggered. $result');
      }
    }
  }

  Future<List<MapEntry<T, io.File>>> prepareFilesFor<T extends MsgServeGraphic>(
          List<T> images) async =>
      _client.prepareFilesFor(images);

  void appEvent(Map<String, Object> event) {
    _appEvents.add(AppEvent(event));
  }

  void dispose() {
    super.cancelSubscriptions();
    _appEvents.close();
    _events.close();
  }

  Future<void> clear() async {
    await _client.store.delete();
    await reloadConfigFromServer();
  }
}

extension MsgServeBlocExt on MsgServeBloc {
  void publishEvent(MsgServeEvent event) {
    _events.add(event);
  }
}

extension on DateTime {
  bool isInRange(DateTime? start, DateTime? end) =>
      (start == null || isAfter(start)) && (end == null || isBefore(end));
}

enum CampaignType {
  interstitial,
  banner,
  textDialog,
}

extension on CampaignType {
  bool matches(MsgServeCampaign campaign) => switch (this) {
        CampaignType.interstitial => campaign.interstitial != null,
        CampaignType.banner => campaign.banner != null,
        CampaignType.textDialog => campaign.textDialog != null,
      };
}

class MapAwareEvaluator extends ExpressionEvaluator {
  const MapAwareEvaluator();

  @override
  dynamic evalMemberExpression(
      MemberExpression expression, Map<String, dynamic> context) {
    final dynamic object = eval(expression.object, context);
    if (object is Map) {
      return object[expression.property.name];
    } else if (object is AppEvent) {
      return object[expression.property.name];
    } else if (object is MsgServeCampaign) {
      return object.toJson()[expression.property.name];
    } else {
      throw UnsupportedError('Member expressions not supported for '
          '${object.runtimeType} $object');
    }
  }
}

extension<T> on Stream<T> {
  /// TODO remove this once this is resolved: https://github.com/ReactiveX/rxdart/issues/463
  ValueConnectableStream<T> publishValueAsync() =>
      ValueConnectableStream<T>(this, sync: false);
}

enum ExpressionType {
  condition,
  trigger,
}

extension on MsgServeCampaign {
  static final _conditionExpression = Expando<Optional<Expression>>();
  static final _triggerExpression = Expando<Optional<Expression>>();

  Expression? getParsedExpressionType(ExpressionType type) {
    final Expando<Optional<Expression>> expando;
    final String? expressionString;
    switch (type) {
      case ExpressionType.condition:
        expressionString = filter;
        expando = _conditionExpression;
        break;
      case ExpressionType.trigger:
        expressionString = trigger;
        expando = _triggerExpression;
        break;
    }
    if (expressionString == null) {
      return null;
    }
    return (expando[this] ??= _parseExpression(expressionString)).orNull;
  }

  Optional<Expression> _parseExpression(String expressionString) {
    try {
      return Optional.of(Expression.parse(expressionString));
    } catch (e, stackTrace) {
      _logger.severe(
          'Error while parsing expression. $expressionString', e, stackTrace);
      return Optional.of(Literal(false));
      // return const Optional<Expression>.absent();
    }
  }
}
