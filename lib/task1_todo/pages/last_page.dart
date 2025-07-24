import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/task1_todo/widgets/bottom_bar.dart';
import 'package:flutter_application_1/task1_todo/widgets/container_custom.dart';
import 'package:flutter_application_1/task1_todo/widgets/decorate_box_custom.dart';
import 'package:flutter_application_1/task1_todo/widgets/search_custom.dart';
import 'package:flutter_application_1/task1_todo/widgets/text_custom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class last_page extends StatelessWidget {
  const last_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/PrivatePhoto.jpg"),
                      radius: 40,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text_custom(
                        text: 'Hello',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      1.verticalSpace,
                      text_custom(
                        text: 'Chingiz',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const Spacer(), //Saga surusdurur
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu, color: Colors.black, size: 28),
                    ),
                  ),
                ],
              ),
              30.verticalSpace,
              const search_custom(),
              15.verticalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: text_custom(
                      text: 'Your Task',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  5.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          container_custom(
                            text: 'In Progress',
                            text_color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            container_color: Colors.blue,
                            container_edge_color: Colors.blue.shade600,
                          ),
                          7.horizontalSpace,
                          container_custom(
                            text: 'To Do',
                            text_color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            container_color: Colors.white,
                            container_edge_color: Colors.grey,
                          ),
                          7.horizontalSpace,
                          container_custom(
                            text: 'Completed',
                            text_color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            container_color: Colors.white,
                            container_edge_color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              8.verticalSpace,
              decorate_box_custom(
                diffuculty_text: "High",
                difuc_con_color: Colors.blue,
                end_date_text: "20 Mar 2023",
                begin_date_text: "12 Jan 2023",
                percentage_text: "50%",
                text: 'The Logo Process',
                fontWeight: FontWeight.w500,
                fontSize: 20,
                text_color: Colors.black, 
                progress_value: 0.5,
              ),
              10.verticalSpace,
              decorate_box_custom(
                diffuculty_text: "Medium",
                difuc_con_color: Colors.pink.shade400,
                end_date_text: "1 Feb 2025",
                begin_date_text: "27 Nov 204",
                percentage_text: "97%",
                progress_value: 0.97,
                text: 'Design Of The Day Challenge',
                fontWeight: FontWeight.w500,
                fontSize: 20,
                text_color: Colors.black,
              ),
              10.verticalSpace,
              decorate_box_custom(
                diffuculty_text: "High",
                difuc_con_color: Colors.blue,
                end_date_text: "8 Oct 2025",
                begin_date_text: "8 Jul 2025",
                percentage_text: "87%",
                progress_value: 0.87,
                text: 'Marketing Creation Day',
                fontWeight: FontWeight.w500,
                fontSize: 20,
                text_color: Colors.black,
              ),
              50.verticalSpace,

            ],
          ),
        ),
      ),
      bottomNavigationBar: const bottom_nav_bar(),
    );
  }
}
