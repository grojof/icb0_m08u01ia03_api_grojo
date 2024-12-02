import 'package:flutter/material.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/theme/theme.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/utils/utils.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/widgets/widgets.dart';

class ImageView extends StatefulWidget {
  const ImageView({
    required this.imageUrl,
    required this.title,
    this.explanation,
    this.copyright,
    this.hdUrl,
    super.key,
  });

  final String imageUrl;
  final String title;
  final String? explanation;
  final String? copyright;
  final String? hdUrl;

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  late final Map<String, ImageProvider> _imageCache = {
    widget.imageUrl: NetworkImage(widget.imageUrl),
  };

  late String _currentImageUrl;

  @override
  void initState() {
    super.initState();
    _currentImageUrl = widget.imageUrl;
    if (widget.hdUrl != null) {
      _imageCache[widget.hdUrl!] = NetworkImage(widget.hdUrl!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! Title
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          //! Stack: Copyright + Image + FullscreenButton
          Stack(
            children: [
              //! Image
              Image(
                height: 300,
                width: double.infinity,
                image: _imageCache[widget.imageUrl]!,
                fit: BoxFit.contain,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const LoaderWidget();
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
              //! FullscreenButton
              Positioned(
                bottom: 10,
                right: 10,
                child: FloatingActionButton.small(
                  heroTag: 'fullscreen',
                  onPressed: () => showDialog<void>(
                    context: context,
                    builder: (_) => StatefulBuilder(
                      builder: _buildFullScreenModal,
                    ),
                  ),
                  child: const Icon(Icons.fullscreen),
                ),
              ),
              //! Copyright
              if (widget.copyright != null)
                Positioned(
                  top: 13,
                  left: 13,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: AppStyles.kDefaultBorderRadius,
                      color: AppColors.kTertiary,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Autor: ${widget.copyright?.replaceAll('\n', ' ').trim()}',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: AppColors.kOnTertiary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
            ],
          ),
          //! Explanation
          if (widget.explanation != null)
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: LinkifyUtil.buildLinkifyText(
                          text: widget.explanation!,
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.bodyMedium,
                          onError: (e) =>
                              debugPrint('Error opening the link: $e'),
                        ),
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

  Widget _buildFullScreenModal(
    BuildContext context,
    void Function(void Function()) modalSetState,
  ) {
    return Dialog.fullscreen(
      child: Stack(
        children: [
          //! Image
          Center(
            child: InteractiveViewer(
              minScale: 1,
              maxScale: 10,
              child: Image(
                image: _imageCache[_currentImageUrl]!,
                fit: BoxFit.contain,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const LoaderWidget();
                },
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
            ),
          ),
          //! CloseButton
          Positioned(
            top: 20,
            right: 20,
            child: FloatingActionButton.small(
              heroTag: 'close',
              backgroundColor: Colors.transparent,
              elevation: 0,
              onPressed: () => Navigator.of(context).pop(),
              child: const Icon(Icons.close),
            ),
          ),
          //! Toggle HD/SD
          if (widget.hdUrl != null && widget.imageUrl != widget.hdUrl)
            Positioned(
              top: 20,
              left: 20,
              child: FloatingActionButton.small(
                heroTag: 'toggleQuality',
                onPressed: () {
                  modalSetState(() {
                    _currentImageUrl = _currentImageUrl == widget.imageUrl
                        ? widget.hdUrl!
                        : widget.imageUrl;
                  });
                },
                child: _currentImageUrl == widget.imageUrl
                    ? const Icon(
                        Icons.hd,
                        color: Colors.yellow,
                      )
                    : const Icon(
                        Icons.sd,
                        color: Colors.lime,
                      ),
              ),
            ),
        ],
      ),
    );
  }
}
