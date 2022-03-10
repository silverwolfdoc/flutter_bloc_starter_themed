import 'package:flutter/material.dart';

import '../../views/screens/home_screen.dart';
import '../exceptions/route_exceptions.dart';

class AppRouter {
  static const String home = '/';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: 'Home',
          ),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
