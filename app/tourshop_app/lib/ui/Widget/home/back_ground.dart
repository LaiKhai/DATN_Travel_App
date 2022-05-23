import 'package:flutter/material.dart';
class Back_groud extends StatelessWidget {
  String imgs;
  Back_groud(
      {Key? key,
      this.imgs =
          'https://media-cdn-v2.laodong.vn/storage/newsportal/2017/8/28/551691/Du-Lich_1.jpg'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          image: DecorationImage(
            image: NetworkImage(imgs),
            fit: BoxFit.cover,
          )),
    );
  }
}
