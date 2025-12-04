import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const OnBoardingScreen(),
      //   );

      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<LoginCubit>(),
      //       child: const LoginScreen(),
      //     ),
      //   );

      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );

      default:
        return null;
    }
  }
}
