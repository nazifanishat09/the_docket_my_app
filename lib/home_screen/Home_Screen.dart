import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (a) => AlertDialog(
                  title:    TextBox(
                    title: 'Confirm Action',
                    fw: FontWeight.w900,
                  ),
                  content: Text("Are you sure that you want to permanently delete this note?"),
                  actions: [Text("Delete"),
                    Text("Cancel")],
                ),
              );
            },
            child: Card(child: Text("data")),
          ),
        ],
      ),
    );
  }
}



class TextBox extends StatelessWidget {
  const TextBox({super.key, required this.title, this.maxline, this.fs, this.fw, this.color});
  final String title;
  final int? maxline;
  final double? fs;
  final FontWeight? fw;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: fw,
        fontSize: fs,
        color: color,
      ),
    );
  }
}

