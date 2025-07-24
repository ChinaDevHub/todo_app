import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottom_nav_bar extends StatelessWidget {
  const bottom_nav_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 20,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month,size: 20,),label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.add,size: 20,),label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp,size: 20,),label: "Stats"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,size: 20,),label: "Profile"),
      ]
      );
  }
}