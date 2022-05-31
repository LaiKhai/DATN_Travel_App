import 'package:company_tour_app/ui/page/widget/Tao_tour/step/show_date.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/step/textFiel.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/Tao_tour/controller_text.dart';

class Thoi_gian_tab extends StatefulWidget {
  const Thoi_gian_tab({Key? key}) : super(key: key);

  @override
  State<Thoi_gian_tab> createState() => _Thoi_gian_tabState();
}

class _Thoi_gian_tabState extends State<Thoi_gian_tab> {
  TextEditingController textController = new TextEditingController();
  DateTime _dateTime_go = DateTime(1000);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
        child: Container(
          width: 400,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFF3192D3),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
              child: Container(
            margin: EdgeInsets.only(left: 50, right: 50),
            child: Text(
              'Thời Gian Chuyến Du Lịch',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          )),
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Khởi hành',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Date_time_but(
                  dateTime: _dateTime_go,
                  texts:
                      '${_dateTime_go.day}/${_dateTime_go.month}/${_dateTime_go.year}',
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Kết thúc',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Date_time_but(
                  dateTime: _dateTime_go,
                  texts:
                      '${_dateTime_go.day}/${_dateTime_go.month}/${_dateTime_go.year}',
                )
              ],
            ),
            textFilCustom2(
                textController: Gia,
                text: 'Giá Tiền Chuyến Đi',
                hintext: 'VND'),
            textFilCustom2(
              textController: So_nguoi,
              text: 'Số Người tối đa',
            )
          ],
        ),
      )
    ]));
  }
}
