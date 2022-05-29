import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String font = '';
const Key centerKey = ValueKey<String>('bottom-sliver-list');

TextStyle ggTextStyle(double? size, FontWeight? fweight, Color? color) {
  return GoogleFonts.quicksand(
      fontSize: size, fontWeight: fweight, color: color);
}
