import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/task1_todo/widgets/text_custom.dart';

class container_custom extends StatelessWidget {
  container_custom({
    super.key,
    required this.text,
    required this.text_color,
    required this.fontSize,
    required this.fontWeight,
    required this.container_color,
    required this.container_edge_color
  });

  String text;
  Color text_color;
  Color container_color;
  Color container_edge_color;
  double fontSize;
  FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 40,
      width: screen_width*0.3,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: container_edge_color,
            width: 1
          )
        ),
        child: Center(
          child: text_custom(
            text: text,
            color: text_color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
