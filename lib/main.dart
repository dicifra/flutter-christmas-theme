import 'package:christmas_theme_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Christmasy App',
      home: SplashScreen(),
      theme: ThemeData.dark().copyWith(
          accentColor: Color(0xFF192212),
          scaffoldBackgroundColor: Color(0xFF29718D),
          primaryColor: Color(0xFF105544)),
    );
  }
}
