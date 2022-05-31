import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/constant/color.dart';


class Item_QL extends StatefulWidget {
  const Item_QL({Key? key}) : super(key: key);

  @override
  State<Item_QL> createState() => _Item_QLState();
}

class _Item_QLState extends State<Item_QL> {
  @override
  Widget build(BuildContext context) {
    return // Generated code for this Container Widget...
        Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 15,
              color: Color.fromARGB(255, 102, 95, 95),
              offset: Offset(2, 3),
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.network(
                        'https://cdn.pixabay.com/photo/2020/04/30/14/03/mountains-and-hills-5112952_960_720.jpg',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Container(
                              width: 180,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AD_APP_COLOR,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(35),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '3.589.000đ',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Icon(
                                  Icons.schedule_outlined,
                                  color: Colors.white,
                                  size: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Text(
                                    '3 ngày/ 2 đêm',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 2, 2, 2),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.place_outlined,
                                  color: Colors.white,
                                  size: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Text(
                                    'TP. Hồ Chí Minh',
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Icon(
                                    Icons.calendar_today_rounded,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Text(
                                    '12/05/2020',
                                    style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Du Lịch phú quốc',
                      style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Phương tiện:',
                    style: GoogleFonts.quicksand(
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: Icon(
                      Icons.place_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  const Icon(
                    Icons.airport_shuttle_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Icon(
                      Icons.person_rounded,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Số người: 12',
                      style: GoogleFonts.quicksand(
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AD_APP_COLOR,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Center(
                      child: Text(
                        'Hội nhóm',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
