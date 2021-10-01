import 'package:facebook_task/view/facebook.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: FacebookScreen(),
      duration: 5000,
      imageSize: 100,
      imageSrc: "assets/images/facebookIcon.png",
      backgroundColor: HexColor('#242527'),
    );
  }
}
