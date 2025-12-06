import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/router/app_router.dart';
import 'k_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[Locale('en'), Locale('ar')],
      path: 'assets/translations',
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: KApp(appRouter: AppRouter()),
    ),
  );
}
