import 'package:flutter/material.dart';
import 'package:the_docket_app/Widget/text_box.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff92c8a5),
          centerTitle: true, title: CommonText(title: "Trash")),
    );
  }
}
