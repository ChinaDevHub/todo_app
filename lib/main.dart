import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/task1_todo/pages/last_page.dart';
import 'package:flutter_application_1/task1_todo/pages/open_page.dart';
import 'package:flutter_application_1/task1_todo/pages/sign_in.dart';
import 'package:flutter_application_1/task1_todo/pages/sign_up.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Terminalda evvelki git deyisikliyini silmek
//Remove-Item -Recurse -Force .git
// Shift Alt F  - kod strukturu
//Ctrl FN f2 - herseyi secir (eynileri)
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return MyWidget();
      },
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/open_page',
        //Butun route ler burada gorunur
        routes: {
          '/open_page': (context) => open_page(),
          '/sign_in' : (context) => sign_in(),
          '/sign_up' : (context) => sign_up(),
          '/last_page' : (context) => last_page(),
        },
      ),
    );
  }
}
