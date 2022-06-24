import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors

Color orangecolor = const Color(0xFFFFCE78);
Color lightbluecolor = const Color(0xFFADDCDF);
Color ltbluecolor = const Color(0xFFE4F1F2);
Color graycolor = const Color(0xFFDDDDDD);
Color blackcolor = const Color(0xFF363C3C);
Color whitecolor = const Color(0xFFFFFFFF);

// TextStyle

TextStyle orangetTextStyle = GoogleFonts.nunito(color: orangecolor);
TextStyle lightblueStyle = GoogleFonts.nunito(color: lightbluecolor);
TextStyle ltbluetTextStyle = GoogleFonts.nunito(color: ltbluecolor);
TextStyle blacktTextStyle = GoogleFonts.nunito(color: blackcolor);
TextStyle whitetTextStyle = GoogleFonts.nunito(color: whitecolor);

// FontWeight

FontWeight thin = FontWeight.w100;
FontWeight extralight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

//Responsive

double getWidth(double size) {
  return Get.width / 392.72727272727275 * size;
}

double getHeight(double size) {
  return Get.height / 850.9090909090909 * size;
}
