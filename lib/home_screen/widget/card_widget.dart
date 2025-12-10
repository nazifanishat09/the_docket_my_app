import 'package:flutter/material.dart';
import 'package:the_docket_app/home_screen/widget/note_add.dart';

import '../../Widget/text_box.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell( //ontap👇👇👇👇
      onTap: (){Navigator.push(
        context,
        MaterialPageRoute(
          builder: (a) => NoteAddEditScreen(screenType: "Edit your Notes"),
        ),
      );},

      //long press👇👇👇👇👇
      onLongPress: () {

        showDialog(
          context: context,
          builder: (a) => AlertDialog(
            title: CommonText(title: 'Confirm Action', fw: FontWeight.w900),
            content: CommonText(
              title:
                  "Are you sure that you want to permanently delete this note?",
            ),
            actions: [
              CommonText(title: "Delete", color: Colors.red),
              SizedBox(width: 20),
              Text("Cancel"),
            ],
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
        child: Card(
          shadowColor: Colors.green,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(title: "title", fs: 18, fw: FontWeight.w700),
                CommonText(title: "title"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
