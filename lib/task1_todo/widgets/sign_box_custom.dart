import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppTextStyle/text_style.dart';

class sign_box_custom extends StatelessWidget {
  sign_box_custom({
    super.key,
    required this.text,
    required this.text_color,
    required this.fontSize,
    required this.container_color,
    this.imagePath,
    this.onTap
  });

  String text;
  Color text_color;
  Color container_color;
  double fontSize;
  String? imagePath;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 40,
        width: screen_width,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: container_color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blue, width: 2),
          ),
          child: Center(
                child: Text(
                  text,
                  style: AppTextStyle.NORMAL_TEXT_STYLE(
                    color: text_color,
                    fontSize: fontSize,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
