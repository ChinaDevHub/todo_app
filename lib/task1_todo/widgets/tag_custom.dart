import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/task1_todo/widgets/text_custom.dart';

class tag_custom extends StatelessWidget {
  tag_custom({super.key, required this.text, required this.text_color,required this.container_color});

  String text;
  Color text_color;
  Color container_color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 90,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: text_custom(
              text: text,
              color: text_color,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
