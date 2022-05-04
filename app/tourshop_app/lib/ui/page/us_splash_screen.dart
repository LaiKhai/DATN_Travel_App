import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';
import 'package:tourshop_app/ui/common/constant/dimen.dart';
import 'package:tourshop_app/ui/page/us_login_screen.dart';

class US_Splash_Screen extends StatelessWidget {
  const US_Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        AnimatedSplashScreen(
          nextScreen: US_Login_Screen(),
          backgroundColor: US_APP_COLOR,
          splash: SvgPicture.asset('assets/images/us_logo.svg'),
          duration: 2000,
          splashTransition: SplashTransition.fadeTransition,
        ),
      ],
    ));
  }
}
