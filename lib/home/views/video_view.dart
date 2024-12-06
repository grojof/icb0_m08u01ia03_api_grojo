import 'package:flutter/material.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/theme/theme.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/utils/utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoView extends StatefulWidget {
  const VideoView({
    required this.videoUrl,
    required this.title,
    this.copyright,
    this.explanation,
    super.key,
  });

  final String videoUrl;
  final String title;
  final String? copyright;
  final String? explanation;

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
      flags: const YoutubePlayerFlags(
        controlsVisibleAtStart: true,
        autoPlay: false,
        hideThumbnail: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          if (widget.title.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: AppColors.kPrimary,
          ),
          if (widget.copyright != null || widget.explanation != null)
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (widget.copyright != null)
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: AppStyles.kDefaultBorderRadius,
                            color: AppColors.kTertiary,
                          ),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Text(
                            'Autor: '
                            '${widget.copyright?.replaceAll('\n', ' ').trim()}',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color: AppColors.kOnTertiary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      if (widget.explanation != null)
                        LinkifyUtil.buildLinkifyText(
                          text: widget.explanation!,
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.bodyMedium,
                          onError: (e) =>
                              debugPrint('Error opening the link: $e'),
                        ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
