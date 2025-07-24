import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppTextStyle/text_style.dart';

class text_field_custom extends StatelessWidget {
  text_field_custom({super.key, required this.text,required this.show_visibility,required this.show_obscure});

  final String text;
  final bool show_visibility;
  final bool show_obscure;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          obscureText: show_obscure,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            hintStyle: AppTextStyle.NORMAL_TEXT_STYLE(
              color: Colors.grey,
              fontSize: 14,
            ),
            suffixIcon: show_visibility ? Icon(Icons.visibility,size: 20,color: Colors.blue,) : null,
          ),
        ),
      ),
    );
  }
}
