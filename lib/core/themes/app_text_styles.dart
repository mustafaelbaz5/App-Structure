import 'package:flutter/material.dart';
import 'package:flutter_structure/core/themes/app_font_family.dart';

import 'app_colors.dart';
import 'app_font_weight.dart';

class AppTextStyles {
  const AppTextStyles._();
  static const TextStyle font32ManropeBlackBold = TextStyle(
    fontSize: 32,
    fontFamily: AppFontFamily.manrope,
    fontWeight: AppFontWeight.bold,
    color: AppColors.grey900,
  );
  static const TextStyle font16ManropeBlackRegular = TextStyle(
    fontSize: 16,
    fontFamily: AppFontFamily.manrope,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey900,
  );
}
