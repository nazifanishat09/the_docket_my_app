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
                  title: Text("Confirm action",),
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
