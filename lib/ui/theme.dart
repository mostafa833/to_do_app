import 'dart:ui';
import 'package:flutter/material.dart'
    show Brightness, Color, Colors, ThemeData;
import 'package:flutter/src/painting/text_style.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

const Color redclr = Color(0xFF8C0303);
const Color yellclr = Color(0xFFFFB746);
const Color blueclr = Color(0xFF0836C1);
const Color darkGreyClr = Color(0xFF121212);
const Color whiteclr = Colors.white;

class Themes {
  static final light = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: redclr,
      brightness: Brightness.light);

  static final dark = ThemeData(
      backgroundColor: Colors.black,
      primaryColor: blueclr,
      brightness: Brightness.dark);
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.grey[400] : Colors.grey));
}
