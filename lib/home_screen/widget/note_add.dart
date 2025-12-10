import 'package:flutter/material.dart';
import 'package:the_docket_app/Widget/text_box.dart';

class NoteAddScreen extends StatefulWidget {
  const NoteAddScreen({super.key});

  @override
  State<NoteAddScreen> createState() => _NoteAddScreenState();
}

class _NoteAddScreenState extends State<NoteAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff92c8a5),
        title: CommonText(title: "Create Your Note", fw: FontWeight.bold),
        actions: [Icon(Icons.check,color: Color(0xff1d3253),fontWeight: FontWeight.bold,),SizedBox(width: 15,)],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(

              cursorColor:  Color(0xff92c8a5),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(

                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                hintText: "Title..",
                hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                    color: Colors.grey,),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
                    cursorColor: Color(0xff92c8a5),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,

                hintText: "Note your day..",
                hintStyle: TextStyle(
                  fontSize: 15,

                  color: Colors.grey,
                ),
              ),
            ),
          ),
          ],
      ),
    );
  }
}
