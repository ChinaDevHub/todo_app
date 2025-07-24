import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static NORMAL_TEXT_STYLE({
    required Color color,
    FontWeight fontWeight = FontWeight.w500,
    required double fontSize,
  }) {
    return GoogleFonts.montserrat(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
