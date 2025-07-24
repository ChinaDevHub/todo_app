import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/task1_todo/widgets/circle_avatar_custom.dart';
import 'package:flutter_application_1/task1_todo/widgets/tag_custom.dart';

class profile_box_custom extends StatelessWidget {
  profile_box_custom({
    super.key,
    required this.diffuculty_text,
    required this.container_color,
    required this.text_color,
  });

  String diffuculty_text;
  Color container_color;
  Color text_color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            circle_avatar_custom(
              pic_path:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8UfxvpY3ZNV_TTYb0pFMpb05L45B2XnLKA&s',
            ),
            Positioned(
              left: 30,
              child: circle_avatar_custom(
                pic_path:
                    'https://upload.wikimedia.org/wikipedia/commons/0/03/Jeff_Bezos_visits_LAAFB_SMC_%283908618%29_%28cropped%29.jpeg',
              ),
            ),
            Positioned(
              left: 60,
              child: circle_avatar_custom(
                pic_path: 'https://cdn.globalinfo.az/2025/07/tramp-4.jpg',
              ),
            ),
            Positioned(
              left: 90,
              child: circle_avatar_custom(
                pic_path:
                    'https://static.president.az/upload/2360x1196/2020/10/20/8j7lfc3yy7_04.jpg',
              ),
            ),
            const Positioned(
              left: 120,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(Icons.add, color: Colors.white, size: 22),
              ),
            ),
          ],
        ),
        Spacer(),
        tag_custom(
          text: diffuculty_text,
          text_color: text_color,
          container_color: container_color,
        ),
      ],
    );
  }
}
