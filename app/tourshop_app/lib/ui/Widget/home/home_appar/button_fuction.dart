import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';
import 'package:tourshop_app/ui/common/constant/string.dart';

// ignore: camel_case_types, must_be_immutable
class Button_function extends StatelessWidget {
  String text;
  IconData icon;
  void Function() ontap;
  Button_function(
      {Key? key, required this.text, required this.icon, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: US_APP_COLOR,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        height: 81,
        width: 85,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
            Text(
              text,
              style: GoogleFonts.quicksand(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
