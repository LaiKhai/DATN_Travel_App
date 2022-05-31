import 'package:company_tour_app/ui/page/widget/Tao_tour/step/textFiel.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Lichtrinh_tab extends StatefulWidget {
  const Lichtrinh_tab({Key? key}) : super(key: key);

  @override
  State<Lichtrinh_tab> createState() => _Lichtrinh_tabState();
}

class _Lichtrinh_tabState extends State<Lichtrinh_tab> {
  TextEditingController textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
        child: Container(
          width: 400,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF3192D3),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Center(
              child: Container(
            margin: EdgeInsets.only(left: 50, right: 50),
            child: Text(
              'Lịch Trình',
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
            
            children: [
              textFilCustom(textController: textController, text: 'Sáng'),
              textFilCustom(textController: textController, text: 'Trưa'),
              textFilCustom(textController: textController, text: 'Chiều')
            ],
          ))
    ]);
  }
}
