import 'package:flutter/material.dart';
import 'package:flutter_structure/core/themes/app_font_family.dart';

import 'app_font_weight.dart';

class AppTextStyles {
  const AppTextStyles._();
  static const TextStyle font32ManropeBold = TextStyle(
    fontSize: 32,
    fontFamily: AppFontFamily.manrope,
    fontWeight: AppFontWeight.bold,
  );
  static const TextStyle font16ManropeRegular = TextStyle(
    fontSize: 16,
    fontFamily: AppFontFamily.manrope,
    fontWeight: AppFontWeight.regular,
  );
}
