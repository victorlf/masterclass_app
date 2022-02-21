import 'dart:async';

import 'package:flutter/material.dart';
import 'package:masterclass_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Material(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/masterclass_logo.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
