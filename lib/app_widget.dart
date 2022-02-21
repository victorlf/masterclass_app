import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF055AA3),
        highlightColor: const Color(0xFFEDF4F8),
        backgroundColor: const Color(0xFF121517),
        scaffoldBackgroundColor: const Color(0xFF121517),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121517),
        ),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const HomeScreen(title: 'Dark Demo Home Page'),
    );
  }
}
