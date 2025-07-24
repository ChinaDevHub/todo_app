import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class circle_avatar_custom extends StatelessWidget {
  circle_avatar_custom({
    super.key,
    required this.pic_path,
  });
  String pic_path;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
          pic_path,
          scale: 3,
        ),
      );
  }
}
