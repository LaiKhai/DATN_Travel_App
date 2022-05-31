import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class textFilCustom extends StatelessWidget {
  TextEditingController textController;
  String text;
  textFilCustom({Key? key, required this.textController, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
        // Generated code for this TextField Widget...
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
          child: TextFormField(
            controller: textController,
            obscureText: false,
            decoration: InputDecoration(
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            minLines: 6,
            maxLines: 60,
          ),
        )
      ],
    );
  }
}

class textFilCustom2 extends StatelessWidget {
  TextEditingController textController;
  String text;
  String hintext;
  textFilCustom2(
      {Key? key,
      required this.textController,
      required this.text,
      this.hintext = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
        TextFormField(
          keyboardType: hintext == 'VND' ? TextInputType.number : null,
          maxLength: 50,
          maxLines: 2,
          minLines: 1,
          controller: textController,
          obscureText: false,
          inputFormatters: hintext == 'VND'
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ]
              : null,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: hintext,
            hintStyle: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 96, 94, 94),
              fontSize: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(35),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(35),
            ),
            filled: true,
          ),
          // style: FlutterFlowTheme.of(context)
          //     .bodyText1
          //     .override(
          //       fontFamily: 'Poppins',
          //       fontSize: 10,
          //     ),
        ),
      ],
    );
  }
}
