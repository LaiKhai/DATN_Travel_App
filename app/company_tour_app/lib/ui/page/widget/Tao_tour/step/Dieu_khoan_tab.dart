import 'package:company_tour_app/ui/page/widget/Tao_tour/step/textFiel.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../../controller/Tao_tour/controller_text.dart';

class Dieu_Khoan_tab extends StatefulWidget {
  const Dieu_Khoan_tab({Key? key}) : super(key: key);

  @override
  State<Dieu_Khoan_tab> createState() => _Dieu_Khoan_tabState();
}

class _Dieu_Khoan_tabState extends State<Dieu_Khoan_tab> {
  int item = 1;
  TextEditingController textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFF3192D3),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Center(
                child: Container(
              margin: const EdgeInsets.only(left: 50, right: 50),
              child: Text(
                'Điêu Khoảng Cá Nhân',
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
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            height: 370 * double.parse(item.toString()),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: item,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Điều ' + (index + 1).toString() + ' : ',
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      textFilCustom2(
                          textController: DK_Tieu_de[index], text: 'Tiêu Đề'),
                      textFilCustom(
                          textController: DK_Chi_tiet[index], text: 'Chi Tiết')
                    ],
                  );
                })),
        InkWell(
          onTap: () {
            setState(() {
              TextEditingController tieude = new TextEditingController();
              TextEditingController Chittiet = new TextEditingController();
              DK_Tieu_de.add(tieude);
              DK_Chi_tiet.add(Chittiet);
              item++;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF3192D3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Container(
                child: Text(
                  'Thêm Điều Khoản',
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
