import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'styles.dart';

// Buttons types
enum ButtonType {
  cancel,
  delete,
  primary,
  secondary,
  light,
  transparentLight,
  transparentDark,
}

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      //! CONFIGURACIÓN GENERAL
      brightness: Brightness.dark, // Tema oscuro
      useMaterial3: true, // Habilitar Material Design 3
      visualDensity: VisualDensity.adaptivePlatformDensity,

      //! ESQUEMA DE COLORES
      colorScheme: AppColors.customColorScheme,

      //! TIPOGRAFÍA
      textTheme: TextTheme(
        //! Para textos de gran tamaño que requieren alta visibilidad,
        //! como títulos en pantallas de inicio o secciones destacadas //
        // Títulos principales o nombres de aplicaciones
        displayLarge: GoogleFonts.orbitron(
          fontSize: 57,
          fontWeight: FontWeight.bold,
          color: AppColors.kOnPrimary,
        ),
        // Subtítulos importantes o mensajes promocionales
        displayMedium: GoogleFonts.orbitron(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: AppColors.kOnPrimary,
        ),
        // Encabezados destacados pero menos prominentes
        displaySmall: GoogleFonts.orbitron(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: AppColors.kOnPrimary,
        ),
        //! Para encabezados y títulos en secciones y páginas //
        // Encabezados de secciones principales
        headlineLarge: GoogleFonts.roboto(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColors.kOnSurface,
        ),
        // Títulos de subsecciones o categorías
        headlineMedium: GoogleFonts.roboto(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: AppColors.kOnSurface,
        ),
        // Encabezados de contenido o artículos
        headlineSmall: GoogleFonts.roboto(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.kOnSurface,
        ),
        //! Para títulos y encabezados de nivel medio, como en tarjetas o diálogos //
        // Títulos en diálogos y modales
        titleLarge: GoogleFonts.roboto(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: AppColors.kOnSurface,
        ),
        // Encabezados en tarjetas y listas
        titleMedium: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.kOnSurface,
        ),
        // Subtítulos o encabezados secundarios.
        titleSmall: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.kOnSurface,
        ),
        //! Para el contenido principal y textos informativos //
        // Texto de párrafo estándar en artículos o descripciones
        bodyLarge: GoogleFonts.archivo(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: AppColors.kOnSurface,
        ),
        // Texto secundario o detalles adicionales
        bodyMedium: GoogleFonts.archivo(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColors.kOnSurface,
        ),
        // Notas al pie o texto menos importante
        bodySmall: GoogleFonts.archivo(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: AppColors.kOnSurface,
        ),
        //! Para etiquetas y textos en componentes interactivos //
        // Texto en botones principales
        labelLarge: GoogleFonts.archivo(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.kOnPrimary,
        ),
        // Etiquetas en campos de entrada y botones secundarios
        labelMedium: GoogleFonts.archivo(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.kOnSurface,
        ),
        // Texto en chips, badges o elementos pequeños
        labelSmall: GoogleFonts.archivo(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.kOnSurface,
        ),
      ),

      //! ICONOGRAFÍA
      iconTheme: const IconThemeData(
        color: AppColors.kTertiary,
        size: 24,
      ),

      //! ESTILO GENERAL DE LOS COMPONENTES
      actionIconTheme: ActionIconThemeData(
        //! BackButtonIcon
        backButtonIconBuilder: (context) {
          return const Icon(Icons.arrow_back_ios_new);
        },
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.kPrimary;
            }
            return Colors.transparent;
          },
        ),
        checkColor: WidgetStateProperty.all(AppColors.kOnPrimary),
        shape: const RoundedRectangleBorder(
          borderRadius: AppStyles.kDefaultBorderRadius,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.kSurfaceContainer,
        border: OutlineInputBorder(
          borderRadius: AppStyles.kDefaultBorderRadius,
          borderSide: BorderSide(color: AppColors.kBorderColorDefault),
        ),
        floatingLabelStyle: TextStyle(color: AppColors.kPrimary),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppStyles.kDefaultBorderRadius,
          borderSide: BorderSide(color: AppColors.kPrimary),
        ),
      ),
      //! Buttons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.kPrimary,
        foregroundColor: AppColors.kOnPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: AppStyles.kDefaultBorderRadius,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: AppStyles.kDefaultBorderRadius,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: AppStyles.kButtonStyle(context).copyWith(
          backgroundColor: WidgetStateProperty.all(AppColors.kPrimary),
          foregroundColor: WidgetStateProperty.all(AppColors.kOnPrimary),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: AppStyles.kButtonStyle(context).copyWith(
          foregroundColor: WidgetStateProperty.all(AppColors.kPrimary),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: AppStyles.kButtonStyle(context).copyWith(
          side: WidgetStateProperty.all(
            const BorderSide(color: AppColors.kPrimary),
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        // Estilos para IconButton
        style: AppStyles.kButtonStyle(context).copyWith(
          padding: const WidgetStatePropertyAll(EdgeInsets.zero),
        ),
      ),
    );
  }

  /// Returns button style based on ButtonTypeEnum
  static ButtonStyle? kButtonStyleByType(
    BuildContext context, {
    required ButtonType buttonType,
    bool isTextButtonIcon = false,
    bool isTextButton = false,
  }) {
    //! Default Styles
    const darkColor = AppColors.kPrimary;
    const disabledColorBase = Colors.grey;
    const lightColor = Colors.white;

    //! Background Colors
    Color kCustomBackgroundColor;
    switch (buttonType) {
      case ButtonType.cancel:
        kCustomBackgroundColor = Colors.blueGrey;
      case ButtonType.delete:
        kCustomBackgroundColor = AppColors.kError;
      case ButtonType.primary:
        kCustomBackgroundColor = AppColors.kPrimary;
      case ButtonType.secondary:
        kCustomBackgroundColor = AppColors.kSecondary;
      case ButtonType.light:
        kCustomBackgroundColor = AppColors.kPrimary;
      case ButtonType.transparentDark:
        kCustomBackgroundColor = Colors.transparent;
      case ButtonType.transparentLight:
        kCustomBackgroundColor = Colors.transparent;
    }

    //! Foreground Colors
    Color kCustomColor;
    switch (buttonType) {
      case ButtonType.cancel:
        kCustomColor = lightColor;
      case ButtonType.delete:
        kCustomColor = lightColor;
      case ButtonType.primary:
        kCustomColor = AppColors.kOnPrimary;
      case ButtonType.secondary:
        kCustomColor = AppColors.kOnSecondary;
      case ButtonType.light:
        kCustomColor = darkColor;
      case ButtonType.transparentDark:
        kCustomColor = darkColor;
      case ButtonType.transparentLight:
        kCustomColor = lightColor;
    }

    return Theme.of(context).textButtonTheme.style?.copyWith(
          iconColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return disabledColorBase;
              }
              return kCustomColor;
            },
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: kCustomColor,
                ),
          ),
          //! Background Color
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              //! Button State [pressed, hovered, disabled]
              // If button is pressed or hovered
              if (states.contains(WidgetState.pressed) ||
                  states.contains(WidgetState.hovered)) {
                return buttonType == ButtonType.transparentDark
                    ? lightColor.withOpacity(0.1)
                    : kCustomBackgroundColor.withOpacity(0.9);
                // If button is disabled
              } else if (states.contains(WidgetState.disabled)) {
                return disabledColorBase.withOpacity(0.4);
              }
              // Default button background color
              switch (buttonType) {
                case ButtonType.cancel:
                  return kCustomBackgroundColor;
                case ButtonType.delete:
                  return kCustomBackgroundColor;
                case ButtonType.primary:
                  return kCustomBackgroundColor;
                case ButtonType.secondary:
                  return kCustomBackgroundColor;
                case ButtonType.light:
                  return kCustomBackgroundColor;
                case ButtonType.transparentDark:
                  return kCustomBackgroundColor;
                case ButtonType.transparentLight:
                  return kCustomBackgroundColor;
              }
            },
          ),
          //! Foreground Color
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              // If button is disabled
              if (states.contains(WidgetState.disabled)) {
                return disabledColorBase;
              }
              // Default button foreground color
              return kCustomColor;
            },
          ),
          //! Padding
          padding: WidgetStateProperty.all<EdgeInsets>(
            isTextButtonIcon
                ? const EdgeInsets.only(
                    top: 14,
                    left: 10,
                    right: 16,
                    bottom: 14,
                  )
                : isTextButton
                    ? const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      )
                    : EdgeInsets.zero,
          ),
        );
  }
}
