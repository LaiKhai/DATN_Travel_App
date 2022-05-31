import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Them_anh_tab extends StatefulWidget {
  const Them_anh_tab({Key? key}) : super(key: key);

  @override
  State<Them_anh_tab> createState() => _Them_anh_tabState();
}

List<File> files = [];

class _Them_anh_tabState extends State<Them_anh_tab> {
  chonAnh() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'png'],
        allowMultiple: true);

    if (result != null) {
      setState(() {
        files = result.paths.map((path) => File(path!)).toList();
      });
    } else {
      // User canceled the picker
    }
  }

  // List<File> review_img = [];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF3192D3),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Center(
                child: Container(
              margin: const EdgeInsets.only(left: 50, right: 50),
              child: Text(
                'Thêm Ảnh',
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
        SizedBox(
          height: 310,
          width: 310,
          child: PageView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: FileImage(files[index])),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: files.length,
            itemBuilder: (contex, index) {
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(files[index]),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        InkWell(
          onTap: () {
            chonAnh();
          },
          child: Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Center(
              child: Text(
                '+',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 144, 140, 140),
                  fontSize: 50,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
