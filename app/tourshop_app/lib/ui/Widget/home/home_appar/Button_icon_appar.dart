import 'package:flutter/material.dart';

class Icon_appar extends StatelessWidget {
  IconData icons;
  Color colors;
  void Function()? onpressed;
  Icon_appar({Key? key, required this.icons, required this.colors,required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icons,
            color: colors,
          )),
    );
  }
}
