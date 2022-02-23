import 'package:flutter/material.dart';

class AboutTheDevScreen extends StatelessWidget {
  const AboutTheDevScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sobre o Dev',
        style: TextStyle(fontSize: 40.0),
      ),
    );
  }
}
