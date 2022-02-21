import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
