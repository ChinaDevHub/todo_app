import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/AppTextStyle/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class search_custom extends StatelessWidget {
  const search_custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 50,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              10.horizontalSpace,
              Image.asset("assets/Vector.png",fit: BoxFit.cover,scale: 0.7,),
              15.horizontalSpace,
              Text("Find your task here",style: AppTextStyle.NORMAL_TEXT_STYLE(color: Colors.grey.shade700, fontSize: 17),)
            ],
          ),
          ),
      ),
    );
  }
}