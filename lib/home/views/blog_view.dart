import 'package:flutter/material.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/theme/theme.dart';
import 'package:icb0_m08u01ia03_api_grojo/core/utils/utils.dart';

class BlogView extends StatelessWidget {
  const BlogView({
    required this.title,
    this.copyright,
    this.explanation,
    super.key,
  });

  final String title;
  final String? copyright;
  final String? explanation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! Title
          if (title.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
          //! Explanation
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //! Copyright
                  if (copyright != null)
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: AppStyles.kDefaultBorderRadius,
                        color: AppColors.kTertiary,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Autor: ${copyright?.replaceAll('\n', ' ').trim()}',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: AppColors.kOnTertiary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  //! Explanation
                  const SizedBox(height: 16),
                  if (explanation != null)
                    LinkifyUtil.buildLinkifyText(
                      text: explanation!,
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.bodyMedium,
                      onError: (e) => debugPrint('Error opening the link: $e'),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
