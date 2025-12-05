import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_structure/core/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_font_weight.dart';

class AppTextStyles {
  // Black
  static TextStyle font32BlackBold() => GoogleFonts.tajawal(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.colorName,
  );
}
