// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:alot/core/colors/colors.dart';
import 'package:alot/core/dims/dims.dart';
import 'package:alot/core/utils/utils.dart';
import 'package:alot/presentation/auth/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeSliderScreen extends StatelessWidget {
  const WelcomeSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      finishButtonTextStyle:
          GoogleFonts.poppins(color: colorWhite, fontWeight: FontWeight.w800),
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
          backgroundColor: colorBlue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100)))),
      skipTextButton: Text(
        'Skip',
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: colorBlue,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'login',
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: colorBlue,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
      controllerColor: colorBlue,
      totalPage: 3,
      headerBackgroundColor: colorWhite,
      pageBackgroundColor: colorWhite,
      background: [
        Image.asset(
          'assets/images/jobs.png',
          height: 400,
        ),
        Image.asset(
          'assets/images/classified.png',
          height: 400,
        ),
        Container(),
      ],
      centerBackground: true,
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              height480,
              Text(
                AppLocalizations.of(context)!
                    .findajobthatsuitsyourinterestskills
                    .toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: colorBlue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              height20,
              Text(
                'Get full-timers, part-timers, interns, and co-founders from a single platform within 10 days at 1/10th of the standard recruiting cost.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              height480,
              Text(
                'Free Classified Ads in UAE, Post Ads Online',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: colorBlue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              height20,
              Text(
                'Find the latest classified ads for flats, jobs, cars, motorbikes, furniture, tools, personals and more for sale in UAE.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoadAssetImage(
                url: 'assets/logos/footer-logo.png',
                height: 100,
                width: 200,
              ),
              height35,
              Text(
                'Dream, Explore, Discover',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: colorBlue,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              height10,
              Text(
                'Each month, more than 3 million job seekers turn to website in their search for work, making over 140,000 applications every single day',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
