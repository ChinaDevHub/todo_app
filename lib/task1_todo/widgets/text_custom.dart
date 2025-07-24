import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppTextStyle/text_style.dart';

class text_custom extends StatelessWidget {
  text_custom({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.onTap,
    required this.fontWeight,
  });
  String text;
  Color color;
  double fontSize;
  Function()? onTap;
  FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: AppTextStyle.NORMAL_TEXT_STYLE(color: color, fontSize: fontSize,fontWeight: fontWeight),
      ),
    );
  }
}
