import 'package:company_tour_app/ui/page/widget/Tao_tour/step/textFiel.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../controller/Tao_tour/controller_text.dart';

class Chi_Tiet_tab extends StatefulWidget {
  const Chi_Tiet_tab({Key? key}) : super(key: key);

  @override
  State<Chi_Tiet_tab> createState() => _Chi_Tiet_tabState();
}

class _Chi_Tiet_tabState extends State<Chi_Tiet_tab> {
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
              'Chi Tiết Dịch Vụ',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textFilCustom(
                textController: Bao_gom, text: 'Dịch Vụ Bao Gồm'),
            textFilCustom(
                textController: Khong_Bao_gom, text: 'Dịch Vụ Không Bao Gồm'),
            // Generated code for this TextField Widget...
            textFilCustom(
                textController: Tre_em, text: 'Dịch Vụ Trẻ Em')
          ],
        ),
      ),
    ]);
  }
}
