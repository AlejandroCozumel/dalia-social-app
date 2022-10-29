import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app_dalia/constants/ConstantColors.dart';
import 'package:social_app_dalia/screens/LandingPage/landingHelpers.dart';

final ConstantColors constantColors = ConstantColors();

class Landinpage extends StatelessWidget {
  const Landinpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.purpleBackgroundColor,
      body: Stack(
        children: [
          bodyColor(),
          Provider.of<LandingHelpers>(context, listen: false)
              .bodyImage(context),
          Provider.of<LandingHelpers>(context, listen: false)
              .taglineText(context),
          Provider.of<LandingHelpers>(context, listen: false)
              .mainButton(context),
          Provider.of<LandingHelpers>(context, listen: false)
              .privacyText(context),
        ],
      ),
    );
  }

  bodyColor() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [0.3, 0.8],
        colors: [
          constantColors.whiteColor,
          constantColors.purpleBackgroundColor
        ],
      )),
    );
  }
}
