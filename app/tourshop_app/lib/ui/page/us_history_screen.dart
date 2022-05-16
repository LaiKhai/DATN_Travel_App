// ignore_for_file: non_constant_identifier_names

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourshop_app/ui/Widget/History/Cart_button.dart';
import 'package:tourshop_app/ui/Widget/History/show_date.dart';
import 'package:tourshop_app/ui/common/constant/color.dart';

import '../common/constant/string.dart';

class History_Screen extends StatefulWidget {
  const History_Screen({Key? key}) : super(key: key);

  @override
  State<History_Screen> createState() => _History_ScreenState();
}

// ignore: camel_case_types
class _History_ScreenState extends State<History_Screen> {
  DateTime _dateTime_go = DateTime(1000);
  // ignore: unused_field
  DateTime _dateTime_end = new DateTime(1000);
  TextEditingController textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lịch sử Tour',
          style: GoogleFonts.quicksand(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        elevation: 0,
        backgroundColor: US_APP_COLOR,
        centerTitle: true,
      ),
      body: CustomScrollView(
        key: centerKey,
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              color: US_APP_COLOR,
              padding: EdgeInsets.all(15),
              child: TextFormField(
                controller: textController,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  hintText: 'Tìm kiếm',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(35, 37, 38, 54),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(116, 35, 37, 38),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
            // Generated code for this Row Widget...
            ,
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Date_time_but(
                    dateTime: _dateTime_go,
                    texts: 'Stat day',
                  ),
                  Date_time_but(
                    dateTime: _dateTime_end,
                    texts: 'End day',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Các tour đã đi',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )
          ])),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return // Generated code for this menuItem Widget...
                Cart_button();
          }, childCount: 10))
        ],
      ),
    );
  }
}
