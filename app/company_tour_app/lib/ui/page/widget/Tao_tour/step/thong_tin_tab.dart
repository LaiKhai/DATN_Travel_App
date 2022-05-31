import 'package:company_tour_app/ui/page/controller/Tao_tour/controller_text.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/dropdowbut.dart';
import 'package:company_tour_app/ui/page/widget/Tao_tour/step/textFiel.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateWidget extends StatefulWidget {
  const CreateWidget({Key? key}) : super(key: key);

  @override
  _CreateWidgetState createState() => _CreateWidgetState();
}

class _CreateWidgetState extends State<CreateWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
          child: Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFF3192D3),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Center(
                child: Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Text(
                'Thông Tin Chuyến Du Lịch',
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textFilCustom2(
                  textController: ten_chuyen, text: 'Tên Chuyến Du Lịch'),
              Text(
                'Thể loại',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Dropdown(),
              textFilCustom(textController: Mo_Ta, text: 'Mô tả'),
              textFilCustom(textController: Kinh_nghiem, text: 'Kinh nghiệm'),
              textFilCustom(textController: Diem_noi_bat, text: 'Điểm nổi bật')
            ],
          ),
        )
      ],
    ));
  }
}
