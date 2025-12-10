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
      appBar: AppBar(backgroundColor: Color(0xff92c8a5),
        title: CommonText(title: "Edit Your Note",fw: FontWeight.bold,),),

    );
  }
}
