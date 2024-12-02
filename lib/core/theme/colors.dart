import 'package:flutter/material.dart';

class AppColors {
  // Paleta principal
  static const Color kPrimary = Color(0xFF0B3D91);
  static const Color kOnPrimary = Color(0xFFFFFFFF);
  static const Color kSecondary = Color(0xFF1B1F32);
  static const Color kOnSecondary = Color(0xFFEEEEEE);
  static const Color kTertiary = Color(0xFFDAA520);
  static const Color kOnTertiary = Color(0xFF000000);

  // Superficie y fondo
  static const Color kSurface = Color(0xFF121212);
  static const Color kOnSurface = Color(0xFFFFFFFF);
  static const Color kSurfaceContainer = Color(0xFF2C2C2C);

  // Estado y alertas
  static const Color kError = Color(0xFFFF5252);
  static const Color kOnError = Color(0xFFFFFFFF);
  static const Color kWarning = Color(0xFFFFA726);
  static const Color kSuccess = Color(0xFF81C784);

  // Neutrales
  static const Color kBorderColorDefault = Color(0xFF373737);

  // Esquema de colores personalizado
  static const ColorScheme customColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: kPrimary,
    onPrimary: kOnPrimary,
    secondary: kSecondary,
    onSecondary: kOnSecondary,
    tertiary: kTertiary,
    onTertiary: kOnTertiary,
    surface: kSurface,
    onSurface: kOnSecondary,
    error: kError,
    onError: kOnError,
  );
}
