import 'package:flutter/material.dart';

import 'package:state/presentation/screen/home_screen.dart';
import 'package:state/presentation/screen/second_screen.dart';
import 'package:state/presentation/screen/third_screen.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                const HomeScreen(title: 'titre', colors: Colors.blue));
      case '/second_screen':
        return MaterialPageRoute(builder: (_) => SecondSreen());
      case '/third_screen':
        return MaterialPageRoute(
            builder: (_) => const ThirdScreen(
                  title: 'third screen',
                  colors: Colors.green,
                ));

      default:
        return null;
    }
  }
}
