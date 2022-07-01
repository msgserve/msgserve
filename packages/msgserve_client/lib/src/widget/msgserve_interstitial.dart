import 'package:flutter/material.dart';
import 'package:flutter_async_utils/flutter_async_utils.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:logging/logging.dart';
import 'package:msgserve_client/src/msgserve_bloc.dart';
import 'package:msgserve_shared/msgserv_shared.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

final _logger = Logger('msgserv_interstitial');

class MsgServeInterstitial extends StatefulWidget {
  const MsgServeInterstitial({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);

  final String label;
  final Widget child;

  @override
  State<MsgServeInterstitial> createState() => _MsgServeInterstitialState();
}

class _MsgServeInterstitialState extends State<MsgServeInterstitial>
    with SingleTickerProviderStateMixin, StreamSubscriberMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 400),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  MsgServeCampaignDisplay? _campaignDisplay;
  bool _showInterstitial = false;
  late MsgServeBloc _msgServBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _msgServBloc = context.watch<MsgServeBloc>();
    _updateCampaign();
  }

  @override
  void reassemble() {
    super.reassemble();
    // on hot reload trigger a refetch...
    _msgServBloc.reloadConfigFromServer();
    // _campaignDisplay = null;
    _updateCampaign();
  }

  Future<void> _updateCampaign() async {
    _controller.reset();
    _logger.fine('Waiting.');
    // await Future<void>.delayed(const Duration(milliseconds: 2000));
    subscriptions.cancelSubscriptions();

    handleSubscription(
      _msgServBloc
          .findCampaign(
        label: widget.label,
        type: CampaignType.interstitial,
      )
          .mergeWith([
        _msgServBloc.triggeredCampaigns(
          label: widget.label,
          type: CampaignType.interstitial,
        )
      ]).listen((event) {
        _logger.fine('got campaign info $event');
        // if (_wasClosed) {
        //   return;
        // }
        if (!mounted) {
          _logger.warning(
              'Still listening on events, but widget was disposed. $event');
          return;
        }
        setState(() {
          _campaignDisplay = event;
          _showInterstitial = true;
          _logger.fine('ok, set state.');
          _controller.reset();
          _controller.animateTo(1);
        });
      }),
    );
  }

  Future<void> _hide() async {
    try {
      await _controller.animateTo(0);
      if (mounted) {
        setState(() {
          _showInterstitial = false;
        });
      }
    } catch (e, stackTrace) {
      _logger.warning('error when hiding interstitial.', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    // if (artifact == null) {
    //   return widget.child;
    // }
    final campaignDisplay = _campaignDisplay;
    final artifact = _campaignDisplay?.campaign.interstitial;
    _logger.fine('build $campaignDisplay $artifact');

    return Stack(
      children: [
        widget.child,
        if (_showInterstitial)
          Positioned.fill(
            child: FadeTransition(
              opacity: _animation,
              // duration: const Duration(milliseconds: 400),
              child: campaignDisplay == null || artifact == null
                  ? const SizedBox()
                  : _InterstitialWidget(
                      artifact: artifact,
                      onTap: () async {
                        await _msgServBloc.triggerCampaignAction(
                          campaign: campaignDisplay,
                          action: artifact.actionOpen,
                        );
                        await _hide();
                      },
                      onClose: () async {
                        await _msgServBloc.triggerCampaignAction(
                          campaign: campaignDisplay,
                          action: artifact.actionDismiss,
                        );
                        await _hide();
                      },
                    ),
            ),
          ),
      ],
    );
  }
}

extension on MsgServeInterstitialArtifact {
  MsgServeAction get actionOpen => this;

  MsgServeAction get actionDismiss => _DismissAction();
}

class _DismissAction extends MsgServeAction {
  _DismissAction() : super(key: 'dismiss');
}

extension on MsgServeFill {
  BoxFit toBoxFit() {
    switch (this) {
      case MsgServeFill.contain:
        return BoxFit.contain;
      case MsgServeFill.cover:
        return BoxFit.cover;
    }
  }
}

class _InterstitialWidget extends HookWidget {
  const _InterstitialWidget({
    Key? key,
    required this.artifact,
    required this.onTap,
    required this.onClose,
  }) : super(key: key);

  final MsgServeInterstitialArtifact artifact;
  final VoidCallback onTap;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final msgServBloc = context.watch<MsgServeBloc>();
    final future = useMemoized(
        () => msgServBloc.prepareFilesFor(artifact.graphics), [artifact]);
    final graphicsSnapshot = useFuture(future);
    _logger.fine('_InterstitialWidget.build ${graphicsSnapshot.hasData}');
    if (!graphicsSnapshot.hasData) {
      return const SizedBox();
    }
    final graphics = graphicsSnapshot.requireData;
    _logger.fine('${graphics.map((e) => e.value.path).toList()}');
    return Material(
      child: Stack(
        children: [
          ...graphics.map(
            (g) {
              return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.file(
                  g.value,
                  fit: g.key.fill.toBoxFit(),
                ),
              );
            },
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Material(
              // color: Colors.,
              color: Colors.transparent,
              child: InkWell(
                // splashColor: Colors.white,
                onTap: () {
                  // _logger.info('blubb');
                  msgServBloc.opts.analytics!
                      .logEvent(name: 'msgserve_interstitial_tap');
                  onTap();
                },
              ),
            ),
          ),
          Positioned(
            top: mq.padding.top + 8,
            right: mq.padding.right + 8,
            child: Material(
              color: Colors.white54,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              // type: MaterialType.button,
              child: IconButton(
                // color: Colors.white24,
                onPressed: () {
                  msgServBloc.opts.analytics!
                      .logEvent(name: 'msgserve_interstitial_close');
                  onClose();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
