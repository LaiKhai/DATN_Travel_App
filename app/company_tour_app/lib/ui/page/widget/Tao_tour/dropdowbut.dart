import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/constant/color.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  String selectedValue = "USA";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
          iconSize: 24.0,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AD_APP_COLOR, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: AD_APP_COLOR,
          ),
          dropdownColor: AD_APP_COLOR,
          value: selectedValue,
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 15,
          ),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: dropdownItems),
    );
  }
}
