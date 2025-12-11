import 'package:flutter/material.dart';
import 'package:flutter_structure/core/themes/app_colors.dart';
import 'package:flutter_structure/core/themes/app_font_family.dart';
import 'package:flutter_structure/core/themes/app_text_styles.dart';

ThemeData getLightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.grey0,
    brightness: Brightness.light,
    fontFamily: AppFontFamily.manrope,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary300,
      brightness: Brightness.light,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: AppColors.grey900,
      displayColor: AppColors.grey900,
    ),

    // Changed By the App General Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary300,
        foregroundColor: AppColors.grey0,
        disabledBackgroundColor: AppColors.grey100,
        disabledForegroundColor: AppColors.grey0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: AppTextStyles.font32ManropeBlackBold,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.grey100),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primary200),
      ),
      fillColor: WidgetStateColor.resolveWith((final Set<WidgetState> states) {
        if (states.contains(WidgetState.focused)) {
          return AppColors.primary0;
        }
        return AppColors.grey0;
      }),
      filled: true,
      hintStyle: AppTextStyles.font16ManropeBlackRegular.copyWith(
        color: AppColors.grey400,
      ),
    ),
  );
}
