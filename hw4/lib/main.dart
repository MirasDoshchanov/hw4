import 'package:flutter/material.dart';
import 'package:helloworld/welcome_screen.dart';
import 'package:helloworld/second_screen.dart';
import 'package:helloworld/third_screen.dart';

import 'fade_page_route_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return FadePageRouteBuilder(WelcomeScreen());
          case '/secondScreen':
            return SlidePageRouteBuilder(SecondScreen());
          case '/thirdScreen':
            return SlidePageRouteBuilder(ThirdScreen());
          default:
            return null;
        }
      },
    );
  }
}
