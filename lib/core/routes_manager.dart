import 'package:flutter/material.dart';
import 'package:mono_ui/core/strings_manager.dart';
import 'package:mono_ui/features/auth/presentation/pages/forgot_password/forgot_password.dart';
import 'package:mono_ui/features/auth/presentation/pages/login/login.dart';
import 'package:mono_ui/features/onBoarding/presentation/pages/on_boarding_view.dart';
import 'package:mono_ui/features/services/presentation/pages/layout.dart';

import 'package:mono_ui/features/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String forgotPassword = "/forgotPassword";
  static const String layout = "/layout";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.layout:
        return MaterialPageRoute(builder: (_) => const LayoutView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
