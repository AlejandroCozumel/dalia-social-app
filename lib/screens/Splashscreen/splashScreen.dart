import 'dart:async';

import 'package:flutter/material.dart';
import 'package:social_app_dalia/constants/ConstantColors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_app_dalia/screens/LandingPage/landingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ConstantColors constantColors = ConstantColors();

  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: const Landinpage(),
                type: PageTransitionType.leftToRight)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: constantColors.whiteColor,
        body: Center(
          child: RichText(
              text: TextSpan(
            text: "Dalia",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: constantColors.purpleColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Social",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: constantColors.pinkColor,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
        ));
  }
}
