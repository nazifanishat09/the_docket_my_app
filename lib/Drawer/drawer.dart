import 'package:flutter/material.dart';
import 'package:the_docket_app/Widget/text_box.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffE1F7EA),
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
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff92c8a5)),
          ),
        ],
      ),
    );
  }
}
