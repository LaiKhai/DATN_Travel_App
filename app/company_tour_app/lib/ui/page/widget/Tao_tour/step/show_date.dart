import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Date_time_but extends StatefulWidget {
  DateTime dateTime;
  String texts;
  Date_time_but({Key? key, required this.dateTime, required this.texts})
      : super(key: key);

  @override
  State<Date_time_but> createState() => _Date_time_butState();
}

class _Date_time_butState extends State<Date_time_but> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.4,
        ),
        width: MediaQuery.of(context).size.width * 0.5,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xFF3192D3),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xFFCFD4DB),
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 5, 12, 5),
          child: InkWell(
            onTap: () {
              showDatePicker(
                      context: context,
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: ColorScheme.light(
                              primary:
                                  Color(0xFF3192D3), // header background color
                              onPrimary: Colors.white, // header text color
                              onSurface: Colors.black, // body text color
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                primary: Colors.red, // button text color
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      },
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1000),
                      lastDate: DateTime(2025))
                  .then((date) {
                setState(() {
                  widget.dateTime = date!;
                });
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.dateTime == DateTime(1000)
                    ? Text(
                        widget.texts,
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                    : Text(
                        ' ${widget.dateTime.day.toString()}/${widget.dateTime.month}/${widget.dateTime.year}',
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                const Icon(
                  Icons.date_range_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
