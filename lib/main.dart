import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app_dalia/constants/ConstantColors.dart';
import 'package:social_app_dalia/screens/LandingPage/landingHelpers.dart';
import 'package:social_app_dalia/screens/Splashscreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    ConstantColors constantColors = ConstantColors();
    return MultiProvider(
        child: MaterialApp(
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: theme.copyWith(
            colorScheme:
                theme.colorScheme.copyWith(secondary: constantColors.darkColor),
            canvasColor: Colors.transparent,
            textTheme: theme.textTheme.apply(
              fontFamily: 'Poppins',
              bodyColor: constantColors.whiteColor,
              displayColor: constantColors.whiteColor,
            ),
          ),
        ),
        providers: [
          ChangeNotifierProvider(create: (_) => LandingHelpers()),
        ]);
  }
}
