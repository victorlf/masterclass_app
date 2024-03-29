import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masterclass_app/modules/mockups_reading_activity/widgets/tinder_home_screen_button.dart';

class TinderScreen extends StatelessWidget {
  const TinderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEB5B6E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_sharp, size: 24.0),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/mockups_reading_activity/tinder_logo.svg',
                  color: Colors.white,
                  height: 70.0,
                ),
                const Text(
                  'tinder',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -4),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: const Text.rich(
                TextSpan(
                  text:
                      'By tapping Create Account or Sign In, you agree to our ',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        decorationThickness: 2.0,
                      ),
                    ),
                    TextSpan(text: '. Learn how we process your data in our '),
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        decorationThickness: 2.0,
                      ),
                    ),
                    TextSpan(text: 'and '),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        decorationThickness: 2.0,
                      ),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const TinderHomeScreenButton(
                text: 'APPLE', icon: FontAwesomeIcons.apple),
            const SizedBox(
              height: 10.0,
            ),
            const TinderHomeScreenButton(
                text: 'FACEBOOK', icon: Icons.facebook),
            const SizedBox(
              height: 10.0,
            ),
            const TinderHomeScreenButton(text: 'PHONE NUMBER', icon: Icons.sms),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Trouble Signing In?',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
