import 'package:flutter/material.dart';

import 'themes.dart';

class AppStyles {
  static const kDefaultBorderRadius = BorderRadius.all(Radius.circular(8));

  static ButtonStyle kButtonStyle(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelLarge;

    return ButtonStyle(
      iconSize: WidgetStateProperty.all<double>(24),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.only(
          top: 20,
          left: 12,
          right: 18,
          bottom: 20,
        ),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        const RoundedRectangleBorder(
          borderRadius: kDefaultBorderRadius,
        ),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        textStyle!,
      ),
    );
  }
}
