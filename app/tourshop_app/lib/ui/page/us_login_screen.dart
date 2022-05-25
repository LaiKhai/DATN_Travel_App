import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourshop_app/ui/common/constant/dimen.dart';
import 'package:tourshop_app/ui/widget/us_textfield.dart';

// ignore: camel_case_types
class US_Login_Screen extends StatefulWidget {
  const US_Login_Screen({Key? key}) : super(key: key);

  @override
  State<US_Login_Screen> createState() => _US_Login_ScreenState();
}

// ignore: camel_case_types
class _US_Login_ScreenState extends State<US_Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: getHeightSize(context),
          width: getWidthSize(context),
          child: Image.asset(
            'assets/images/us_background_login.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: getHeightSize(context),
          width: getWidthSize(context),
          child: Image.asset(
            'assets/images/us_rectangle_bglogin.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: getHeightSize(context) * (-0.09),
            left: getWidthSize(context) * (-0.2),
            child: SvgPicture.asset(
              'assets/images/us_path_bglogin.svg',
              fit: BoxFit.cover,
            )),
        Positioned(
            top: getHeightSize(context) * 0.05,
            left: getWidthSize(context) * 0.1,
            child: Container(
              height: 70,
              width: 80,
              child: Image.asset('assets/images/us_logo_bglogin.png'),
            )),
        US_TextField_Login(),
      ],
    ));
  }
}
