import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_async_utils/flutter_async_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:msgserve_client/src/msgserve_bloc.dart';
import 'package:msgserve_shared/msgserv_shared.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

final _logger = Logger('msgserve_banner_carousel');

class MsgServeBannerCarousel extends ConsumerStatefulWidget {
  const MsgServeBannerCarousel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  ConsumerState createState() => _MsgServeBannerCarouselState();
}

class _MsgServeBannerCarouselState extends ConsumerState<MsgServeBannerCarousel>
    with StreamSubscriberMixin {
  late final MsgServeBloc _msgServBloc = ref.read(msgServeProvider);
  final _pageController = PageController();

  List<(MsgServeCampaignDisplay, File, MsgServeBannerArtifact)>
      _campaignDisplay = [];
  int _displayedCampaign = 0;

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
        type: CampaignType.banner,
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
            <(MsgServeCampaignDisplay, File, MsgServeBannerArtifact)>[];
        _campaignDisplay = campaignDisplay;
        for (final e in event) {
          if (e.campaign.banner case final banner?) {
            final result = await _msgServBloc.prepareFilesFor([banner.graphic]);
            if (_campaignDisplay != campaignDisplay) {
              // seems another event got already loaded.
              return;
            }
            if (result.isEmpty) {
              return;
            }
            campaignDisplay.add((e, result.first.value, banner));
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
    final campaigns = _campaignDisplay;
    if (campaigns.isEmpty) {
      return const SizedBox();
    }
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Stack(
        children: [
          if (campaigns.length > 1) ...[
            Positioned(
              bottom: 16,
              child: PageViewDotIndicator(
                currentItem: _displayedCampaign,
                count: campaigns.length,
                unselectedColor: Colors.black26,
                selectedColor: Colors.blue,
              ),
            ),
          ],
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _displayedCampaign = page;
              });
            },
            children: campaigns.map((campaign) {
              return InkWell(
                onTap: () {
                  _msgServBloc.triggerCampaignAction(
                    campaign: campaign.$1,
                    action: campaign.$3,
                  );
                },
                child: Ink.image(
                  image: FileImage(campaign.$2),
                  fit: BoxFit.cover,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
