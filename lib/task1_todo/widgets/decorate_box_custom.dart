import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/task1_todo/widgets/profile_box_custom.dart';
import 'package:flutter_application_1/task1_todo/widgets/text_custom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class decorate_box_custom extends StatelessWidget {
  decorate_box_custom({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    required this.text_color,
    required this.progress_value,
    required this.percentage_text,
    required this.begin_date_text,
    required this.end_date_text,
    required this.diffuculty_text,
    required this.difuc_con_color,
  });

  String text;
  double fontSize;
  FontWeight fontWeight;
  Color text_color;
  double progress_value;
  String percentage_text;
  String begin_date_text;
  String end_date_text;
  String diffuculty_text;
  Color difuc_con_color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
            height: 230,
            width: MediaQuery.of(context).size.width * 0.95,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_custom(
                      text: "Design",
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    5.verticalSpace,
                    Row(
                      children: [
                        text_custom(
                          text: text,
                          color: text_color,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz_outlined,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    2.verticalSpace,
                    text_custom(
                      text: "Progress",
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: fontWeight,
                    ),
                    2.verticalSpace,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(5),
                            minHeight: 10,
                            value: progress_value,
                            color: Colors.blue,
                            backgroundColor: Colors.grey[300],
                          ),
                        ),
                        10.horizontalSpace,
                        text_custom(
                          text: percentage_text,
                          color: text_color,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                      ],
                    ),
                    5.verticalSpace,
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          size: 18,
                          color: Colors.blue,
                        ),
                        4.horizontalSpace,
                        text_custom(
                          text: begin_date_text,
                          color: text_color,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                        30.horizontalSpace,
                        const Icon(Icons.flag, size: 18, color: Colors.blue),
                        4.horizontalSpace,
                        text_custom(
                          text: end_date_text,
                          color: text_color,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                      ],
                    ),
                    5.verticalSpace,
                    profile_box_custom(diffuculty_text: diffuculty_text, container_color: difuc_con_color, text_color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
        ),
        const Center(),
      ],
    );
  }
}
