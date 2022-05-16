// ignore_for_file: camel_case_types

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tourshop_app/ui/common/constant/string.dart';

// ignore: must_be_immutable
class Img_tour_NB extends StatefulWidget {
  String imgs;
  Img_tour_NB(
      {Key? key,
      this.imgs =
          'https://www.gettyimages.pt/gi-resources/images/Homepage/Hero/PT/PT_hero_42_153645159.jpg'})
      : super(key: key);

  @override
  State<Img_tour_NB> createState() => _Img_tour_NBState();
}

class _Img_tour_NBState extends State<Img_tour_NB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.network(
            widget.imgs,
          ).image,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}

class Text_tour_NB extends StatelessWidget {
  String name_tour;
  String mo_ta;
  String imgs;
  String avt_Congty;
  String name_Congty;
  Text_tour_NB(
      {Key? key,
      this.name_tour = 'Tên Tour',
      this.mo_ta =
          'Mô tả dài A delicious and filling combo with two burger plates for an amazing price.',
      this.imgs = 'https://pic.onlinewebfonts.com/svg/img_119650.png',
      this.avt_Congty = 'https://pic.onlinewebfonts.com/svg/img_119650.png',
      this.name_Congty = 'Công ty'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 170,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name_tour,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: font,
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: AutoSizeText(
                  mo_ta,
                  style: TextStyle(
                    color: const Color.fromARGB(206, 255, 255, 255),
                    fontSize: 14,
                    fontFamily: font,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(
                          imgs,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          name_Congty,
                          style: TextStyle(
                            color: Color(0xB3FFFFFF),
                            fontSize: 14,
                            fontFamily: font,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
