import 'package:flutter/material.dart';

class TinderHomeScreenButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const TinderHomeScreenButton(
      {Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonMinWidth = screenWidth < 500.0 ? double.infinity : 500.0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: buttonMinWidth,
        child: MaterialButton(
          height: 50.0,
          minWidth: buttonMinWidth,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2.0, color: Colors.white),
              borderRadius: BorderRadius.circular(40.0)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 20.0,
                ),
                Text(
                  'SIGN IN WITH $text',
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
