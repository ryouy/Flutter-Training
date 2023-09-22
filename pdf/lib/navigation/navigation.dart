import 'package:flutter/material.dart';
import 'package:my_scan/screens/top/top.dart';

import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/intro/intro.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const home = '/home';
  static const login = '/';
  static const top = '/top';
  static const intro = '/intro';
  static const editor = '/editor';
}

abstract class AppNavigation {
  AppNavigation._();

  static Route<dynamic>? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return AppPageRoute((_) => const HomeScreen(), settings);
      case AppRoutes.login:
        return AppPageRoute((_) => const LoginScreen(), settings);
      case AppRoutes.top:
        return AppPageRoute((_) => TopPage(), settings);
      case AppRoutes.intro:
        return AppPageRoute((_) => Intro(), settings);
      default:
        throw 'Cannot find destination route';
    }
  }
}

/// This function ensures the RouteSettings parameter will be pass into a destination route
/// to make sure every destination has a settings
// ignore: non_constant_identifier_names
PageRouteBuilder<T> AppPageRoute<T>(
  Widget Function(BuildContext context) builder,
  RouteSettings settings, {
  bool maintainState = true,
  bool fullscreenDialog = false,
  Duration transitionDuration = const Duration(milliseconds: 500),
  Duration reverseTransitionDuration = const Duration(milliseconds: 500),
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
      transitionsBuilder,
}) =>
    PageRouteBuilder(
      settings: settings,
      maintainState: maintainState,
      fullscreenDialog: fullscreenDialog,
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return builder(context);
      },
      transitionsBuilder: transitionsBuilder ??
          (context, animation, secondaryAnimation, child) => child,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
    );
