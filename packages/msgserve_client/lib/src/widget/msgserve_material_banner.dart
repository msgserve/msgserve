import 'package:flutter/material.dart';
import 'package:flutter_async_utils/flutter_async_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:msgserve_client/msgserve_client.dart';

import '../msgserve_bloc.dart';

final _logger = Logger('msgserve_material_banner');

class MsgserveMaterialBanner extends ConsumerStatefulWidget {
  const MsgserveMaterialBanner({
    super.key,
    required this.label,
  });

  final String label;

  @override
  ConsumerState<MsgserveMaterialBanner> createState() =>
      _MsgserveMaterialBannerState();
}

class _MsgserveMaterialBannerState extends ConsumerState<MsgserveMaterialBanner>
    with StreamSubscriberMixin {
  late final MsgServeBloc _msgServBloc = ref.read(msgServeProvider);
  List<(MsgServeCampaignDisplay, MsgServeTextDialog)> _campaignDisplay = [];

  @override
  void initState() {
    super.initState();
    _updateCampaign();
  }

  Future<void> _updateCampaign() async {
    _logger.fine('Waiting.');
    // await Future<void>.delayed(const Duration(milliseconds: 2000));
    subscriptions.cancelSubscriptions();

    handleSubscription(
      _msgServBloc
          .findAllCampaigns(
        label: widget.label,
        type: CampaignType.textDialog,
      )
          .listen((event) async {
        _logger.fine('got campaign info $event');
        // if (_wasClosed) {
        //   return;
        // }
        if (!mounted) {
          _logger.warning(
              'Still listening on events, but widget was disposed. $event');
          return;
        }
        final campaignDisplay =
            <(MsgServeCampaignDisplay, MsgServeTextDialog)>[];
        _campaignDisplay = campaignDisplay;
        for (final e in event) {
          if (e.campaign.textDialog case final textDialog?) {
            campaignDisplay.add((e, textDialog));
          }
        }
        if (!mounted) {
          return;
        }
        setState(() {});
        // _msgServBloc.prepareFilesFor(event
        //     .map((e) => e.campaign.banner?.graphic)
        //     .whereNotNull()
        //     .toList());
        // setState(() {
        //   _campaignDisplay = event;
        //   _logger.fine('ok, set state.');
        // });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_campaignDisplay.isEmpty) {
      return SizedBox();
    }
    final (campaign, dialog) = _campaignDisplay.first;
    return MaterialBanner(
      elevation: 2,
      forceActionsBelow: true,
      content: Column(
        children: [
          Text(
            dialog.title,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            dialog.body,
          ),
        ],
      ),
      actions: [
        ...dialog.actions.map(
          (action) => TextButton(
            onPressed: () {
              _msgServBloc.triggerCampaignAction(
                  campaign: campaign, action: action);
            },
            child: Text(action.label ?? ''),
          ),
        ),
      ],
    );
  }
}
