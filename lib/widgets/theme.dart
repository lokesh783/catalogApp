// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  // static Color cream;

  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // cardColor: Colors.white,
      // canvasColor: creamColor,
      // buttonColor: darkBluishColor,
      // accentColor: darkBluishColor,
      // colorScheme: ,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(),
        // textTheme:
      ));

  //Colors
  static Color creme = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color bluish = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
