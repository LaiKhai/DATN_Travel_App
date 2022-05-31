import 'package:company_tour_app/ui/common/constant/color.dart';
import 'package:company_tour_app/ui/page/widget/Quan_ly/Item_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/constant/string.dart';

class Quan_Ly_Tour extends StatefulWidget {
  const Quan_Ly_Tour({Key? key}) : super(key: key);

  @override
  State<Quan_Ly_Tour> createState() => _Quan_Ly_TourState();
}

class _Quan_Ly_TourState extends State<Quan_Ly_Tour> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(key: centerKey, slivers: <Widget>[
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 20, right: 50, left: 50),
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Color.fromARGB(255, 83, 83, 83),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    '30k',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: AD_APP_COLOR,
                      fontSize: 35,
                    ),
                  ),
                  subtitle: Text(
                    'Người theo dõi',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 193, 193, 193),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    '30k',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: AD_APP_COLOR,
                      fontSize: 35,
                    ),
                  ),
                  subtitle: Text(
                    'Tour được đặt',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 193, 193, 193),
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ])),
      SliverList(delegate: SliverChildBuilderDelegate((context, index) {
        return Item_QL();
      }))
    ]);
  }
}
