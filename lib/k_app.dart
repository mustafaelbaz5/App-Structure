import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/router/app_router.dart';


class KApp extends StatelessWidget {
  const KApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          // initialRoute: Routes.initialScreen,
          onGenerateRoute: appRouter.generateRoute,
          title: 'App Title',
          theme: ThemeData(
            // primaryColor: AppColors.darkBlue,
            scaffoldBackgroundColor: Colors.white,
            // textTheme: context.locale.languageCode == 'ar'
            //     ? GoogleFonts.tajawalTextTheme()
            //     : GoogleFonts.interTextTheme(),
          ),
        );
      },
    );
  }
}
