import 'package:flutter/material.dart';
import 'package:masterclass_app/screens/home_screen.dart';
import 'package:masterclass_app/screens/splash_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masterclass App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF055AA3),
        highlightColor: const Color(0xFFEDF4F8),
        cardColor: const Color(0xFF172026),
        backgroundColor: const Color(0xFF121517),
        scaffoldBackgroundColor: const Color(0xFF121517),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121517),
          elevation: 0.0,
        ),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Color(0xFFEDF4F8),
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            color: Color(0xFFEDF4F8),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            color: Color(0xFF51565A),
            fontFamily: 'Montserrat',
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            color: Color(0xFF51565A),
            fontFamily: 'Montserrat',
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        SplashScreen.route: (context) => const SplashScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
      },
      //home: const SplashScreen(),
    );
  }
}
