import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class open_page extends StatefulWidget {
  const open_page({super.key});

  @override
  State<open_page> createState() => _open_pageState();
}

class _open_pageState extends State<open_page> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, '/sign_in');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset("assets/logo.png",fit: BoxFit.cover,scale: 3,),
        ),
      );
  }
}