import 'package:flutter/material.dart';
import 'package:OOUC/Screens/LoginPage.dart';
import 'package:OOUC/Screens/HomePage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {

      /** Customer related routes **/

      case '/loginPage':
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case '/HomePage':
        return MaterialPageRoute(builder: (_) => const HomePage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
