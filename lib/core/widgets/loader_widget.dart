import 'package:flutter/material.dart';
import '../theme/theme.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({
    this.isSliverToBoxAdapter = false,
    this.sizeFactor = 1.0,
    super.key,
  });

  final bool isSliverToBoxAdapter;
  final double sizeFactor;

  @override
  Widget build(BuildContext context) {
    if (isSliverToBoxAdapter) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: _buildLoader(),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight == double.infinity) {
          return SizedBox(
            height: 200,
            child: _buildLoader(),
          );
        }

        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
            maxHeight: constraints.maxHeight,
            minWidth: constraints.maxWidth,
            maxWidth: constraints.maxWidth,
          ),
          child: _buildLoader(),
        );
      },
    );
  }

  Widget _buildLoader() {
    final progressSize = 80 * sizeFactor;
    final imageSize = 60 * sizeFactor;

    return Center(
      child: Stack(
        children: [
          Align(
            child: SizedBox(
              height: progressSize,
              width: progressSize,
              child: CircularProgressIndicator(
                color: AppColors.kTertiary,
                strokeWidth: 1.5 * sizeFactor,
              ),
            ),
          ),
          Align(
            child: Image.asset(
              'assets/favicon-192.png',
              fit: BoxFit.cover,
              width: imageSize,
              height: imageSize,
            ),
          ),
        ],
      ),
    );
  }
}
