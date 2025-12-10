import 'package:flutter/material.dart';
import 'package:the_docket_app/Drawer/trash.dart';
import 'package:the_docket_app/Widget/text_box.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffF5FCF9),
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xffE1F7EA)),
            child: Row(
              children: [
                CommonText(
                  title: "Explore",
                  fs: 30,
                  fw: FontWeight.bold,
                  color: Color(0xff1d3253),
                ),
              ],
            ),
          ),
          //setting👇👇👇👇👇
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff92c8a5),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    offset: Offset(1, 1),
                    color: Colors.grey,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.settings, color: Color(0xff1d3253)),
                  SizedBox(width: 30),
                  CommonText(
                    title: "Settings",
                    fs: 16,
                    color: Color(0xff1d3253),
                    fw: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),
          //Trash👇👇👇👇👇
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (a) => TrashScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff92c8a5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      offset: Offset(1, 1),
                      color: Colors.grey,
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.delete, color: Color(0xff1d3253)),
                    SizedBox(width: 30),
                    CommonText(
                      title: "Trash",
                      fs: 16,
                      color: Color(0xff1d3253),
                      fw: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Archive 👇👇👇👇👇
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff92c8a5),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    offset: Offset(1, 1),
                    color: Colors.grey,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.system_update_alt, color: Color(0xff1d3253)),
                  SizedBox(width: 30),
                  CommonText(
                    title: "Archived",
                    fs: 16,
                    color: Color(0xff1d3253),
                    fw: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
