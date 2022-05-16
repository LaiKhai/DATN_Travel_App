import 'package:flutter/material.dart';

class Icon_appar extends StatelessWidget {
  IconData icons;
  Color colors;
  Icon_appar({Key? key, required this.icons, required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icons,
            color: colors,
          )),
    );
  }
}
