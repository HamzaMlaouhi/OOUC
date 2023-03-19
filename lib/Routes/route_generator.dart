import 'package:flutter/material.dart';
import 'package:OOUC/Screens/LoginPage.dart';
import 'package:OOUC/Screens/MenuPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {

      /** Customer related routes **/

      case '/loginPage':
        return MaterialPageRoute(builder: (_) => LoginPage());

      case '/MenuPage':
        return MaterialPageRoute(builder: (_) => MenuPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
