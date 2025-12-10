import 'package:flutter/material.dart';
import 'package:the_docket_app/Widget/text_box.dart';
import 'package:the_docket_app/api/note_add_api.dart';

class NoteAddEditScreen extends StatefulWidget {
  const NoteAddEditScreen({super.key, required this.screenType, this.note});
  final String screenType;
  final String? note;

  @override
  State<NoteAddEditScreen> createState() => _NoteAddEditScreenState();
}

class _NoteAddEditScreenState extends State<NoteAddEditScreen> {
  TextEditingController textC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff92c8a5),
        title: CommonText(title: "${widget.screenType}", fw: FontWeight.bold),
        actions: [
          InkWell(
            onTap: () async{
             await NoteAdd.addNote(data: textC.text);
              Navigator.pop(context);
            },
            child: Icon(
              Icons.check,

              color: Color(0xff1d3253),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Text('${widget.note}'),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(height: 600,
              child: TextField(
                controller: textC,
                cursorColor: Color(0xff92c8a5),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,

                  hintText: "Note your day..",
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
