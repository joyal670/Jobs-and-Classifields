// ignore_for_file: prefer_const_constructors

import 'package:alot/core/colors/colors.dart';
import 'package:alot/core/dims/dims.dart';
import 'package:alot/core/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFormScreen extends StatelessWidget {
  const LoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            height20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: LoadAssetImage(
                    url: 'assets/logos/footer-logo.png',
                    height: 30,
                    width: 100,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                  ),
                )
              ],
            ),
            LoadAssetImage(
              url: 'assets/images/gray-bg.png',
            ),
            height20,
            Text(
              'Log in to favorite an ad',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            height20,
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    foregroundColor:
                        Colors.pink, // <- this changes the splash color
                  ),
                  onPressed: () {},
                  icon: Icon(SocialMediaIcons.google),
                  label: Text('Continue with Google')),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(SocialMediaIcons.facebook),
                  label: Text('Continue with Facebook')),
            ),
            height20,
            Text(
              'Don\'t have an account? create one',
              style: GoogleFonts.poppins(
                color: colorRed,
                fontSize: 12,
              ),
            ),
            height20,
            RichText(
              text: TextSpan(
                  text: "By signing up I agree to the",
                  style: GoogleFonts.poppins(
                    color: colorGrey,
                    fontSize: 9,
                  ),
                  children: [
                    TextSpan(
                        text: ' terms and conditions',
                        style: GoogleFonts.poppins(
                          color: colorBlue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showSnackBar(
                                context, "terms and conditions clicked");
                          }),
                    TextSpan(
                      text: ' and ',
                      style: GoogleFonts.poppins(),
                    ),
                    TextSpan(
                        text: 'privacy policy',
                        style: GoogleFonts.poppins(
                          color: colorBlue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showSnackBar(context, "privacy policy clicked");
                          }),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
