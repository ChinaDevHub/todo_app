import 'package:flutter/material.dart';
import 'package:flutter_application_1/task1_todo/widgets/sign_box_custom.dart';
import 'package:flutter_application_1/task1_todo/widgets/text_custom.dart';
import 'package:flutter_application_1/task1_todo/widgets/text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class sign_up extends StatefulWidget {
  sign_up({super.key});
  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {

bool notify_to_me = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
        ), //Text
        title: text_custom(text: "Sign Up", color: Colors.black, fontSize: 16,fontWeight: FontWeight.w300),
        centerTitle: true,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              //Text
              text_custom(text: "E-mail", color: Colors.black, fontSize: 14,fontWeight: FontWeight.w300),
              //TextField
              text_field_custom(
                text: 'Enter your email',
                show_visibility: false,
                show_obscure: false,
              ),
              20.verticalSpace,
              text_custom(text: 'Password', color: Colors.black, fontSize: 14,fontWeight: FontWeight.w300),
              text_field_custom(
                text: 'Enter your password',
                show_visibility: true,
                show_obscure: true,
              ),
              20.verticalSpace,
              text_custom(text: "Retype-Password", color: Colors.black, fontSize: 14,fontWeight: FontWeight.w300),
              text_field_custom(text: "Confirm your password", show_visibility: false, show_obscure: true),
              10.verticalSpace,
              Row(
                children: [
                  Checkbox(
                    value: notify_to_me ,
                    onChanged: (new_value) {
                      setState(() {
                        notify_to_me = new_value!;
                      });
                    },
                  ),
                  5.horizontalSpace,
                  text_custom(
                    fontWeight: FontWeight.w300,
                    text: 'I Agree terms and Conditions',
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ],
              ),
              20.verticalSpace,
              sign_box_custom(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 
                  '/last_page'
                  );
                },
                text: 'Sign Up Now',
                text_color: Colors.white,
                fontSize: 14,
                container_color: Colors.blueAccent,
              ),
              45.verticalSpace,
              Center(
                child: text_custom(
                  fontWeight: FontWeight.w300,
                  text: 'Or with',
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              45.verticalSpace,
              sign_box_custom(
                onTap: () {
                  
                },
                text: 'SignUp with FaceBook',
                text_color: Colors.white,
                fontSize: 14,
                container_color: Colors.blueAccent,
              ),
              15.verticalSpace,
              sign_box_custom(
                onTap: () {
                  // Sabah burani yazmalisan
                },
                text: 'SignUp with Google',
                text_color: Colors.black,
                fontSize: 14,
                container_color: Colors.white,
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: text_custom(
                      fontWeight: FontWeight.w300,
                      text: "Already have an account?",
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  3.horizontalSpace,
                  Center(
                    child: text_custom(
                      fontWeight: FontWeight.w300,
                      onTap: () {
                        Navigator.pushNamed(
                          context, 
                          '/sign_in',
                          );
                      },
                      text: "SignIn",
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}