import 'package:flutter/material.dart';

class AppStyles {
  static const kDefaultBorderRadius = BorderRadius.all(Radius.circular(8));

  static ButtonStyle kButtonStyle(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelLarge;

    return ButtonStyle(
      iconSize: WidgetStateProperty.all<double>(24),
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
