//size screen
import 'package:flutter/material.dart';

double getWidthSize(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return width;
}

double getHeightSize(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  return height;
}
double TyleWitdth(BuildContext context,double x) {
  double width = MediaQuery.of(context).size.width;
  return (x*width)/393;
}

double TyLeHeight(BuildContext context,double y) {
  double height = MediaQuery.of(context).size.height;
  return  (y*height)/782;
}
