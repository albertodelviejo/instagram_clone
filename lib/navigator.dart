// ignore_for_file: constant_identifier_names

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/features/login/presentation/pages/login_screen.dart';

enum Routes {
  INIT,
  LOGIN,
}

class _Page {
  static const String init = "/";
  static const String login = "/login";

  static const Map<Routes, String> _pageMap = {
    Routes.INIT: init,
    Routes.LOGIN: login,
  };

  static String? page(Routes routes) => _pageMap[routes];
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static NavigatorState get state => navigatorKey.currentState!;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Map<String, dynamic>? arguments =
        settings.arguments as Map<String, dynamic>?;

    switch (settings.name) {
      case _Page.init:
      // return _pageRoute(page: const Splash(), routeSettings: settings);
      case _Page.login:
        return _pageRoute(page: const LoginScreen(), routeSettings: settings);

      default:
        return _pageRoute(page: const LoginScreen(), routeSettings: settings);
    }
  }

  static Route _pageRoute({
    required Widget page,
    RouteSettings? routeSettings,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            settings: routeSettings, builder: (context) => page)
        : MaterialPageRoute(
            settings: routeSettings,
            builder: (BuildContext context) => page,
          );
  }

  static Future push<T>(Routes route, {Map<String, dynamic>? arguments}) =>
      state.pushNamed(_Page.page(route)!, arguments: arguments);

  static Future pushNamedAndRemoveUntil<T>(Routes route, {arguments}) =>
      state.pushNamedAndRemoveUntil(_Page.page(route)!, (Route routes) => false,
          arguments: arguments);

  static void pop({Map<String, dynamic>? params}) => state.pop(params);

  static void popUntil(Routes route, {Object? params}) {
    state.popUntil((
      Route<dynamic> routes,
    ) {
      return routes.settings.name == _Page.page(route)!;
    });
  }

  static void popToHome() => state.popUntil((route) => route.isFirst);
}
