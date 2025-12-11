import 'package:flutter/rendering.dart';
import 'package:flutter_structure/core/themes/app_colors.dart';

class AppShadows {
  const AppShadows._();

  static const BoxShadow shadow1 = BoxShadow(
    color: AppColors.shadow1Color,
    blurRadius: 4,
    offset: Offset(0, 4),
  );
}
