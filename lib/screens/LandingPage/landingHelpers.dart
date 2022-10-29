import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_app_dalia/constants/ConstantColors.dart';

class LandingHelpers with ChangeNotifier {
  ConstantColors constantColors = ConstantColors();

  Widget bodyImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/daliaLogo.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget taglineText(BuildContext context) {
    return Positioned(
        top: 450.0,
        left: 40.0,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 200.0,
          ),
          child: RichText(
              text: TextSpan(
            text: "Eres parte de ",
            style: TextStyle(
              fontFamily: 'Poppins',
              color: constantColors.pinkColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: "Dalia ?",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: constantColors.purpleColor,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
        ));
  }

  Widget mainButton(BuildContext context) {
    return Positioned(
      top: 630.0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Container(
                child: Icon(
                  EvaIcons.emailOutline,
                  color: Colors.yellow.shade700,
                ),
                width: 80.0,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellow.shade700, width: 3),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                child: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.red.shade700,
                ),
                width: 80.0,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade700, width: 3),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                child: Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.blue.shade700,
                ),
                width: 80.0,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue.shade700, width: 3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget privacyText(BuildContext context) {
    return Positioned(
      top: 720.0,
      left: 20,
      right: 20,
      child: Container(
          child: Column(
        children: const [
          Text(
            "Al continuar aceptas nuestra politica de privacidad",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          Text(
            "Politica de privacidad",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          )
        ],
      )),
    );
  }
}
