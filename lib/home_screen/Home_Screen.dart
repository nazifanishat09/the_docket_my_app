import 'package:flutter/material.dart';
import 'package:the_docket_app/Widget/text_box.dart';
import 'package:the_docket_app/home_screen/widget/card_widget.dart';
import 'package:the_docket_app/home_screen/widget/note_add.dart';

import '../Drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffF5FCF9),
      appBar: AppBar(
        backgroundColor: Color(0xff92c8a5),

        centerTitle: true,
        title: CommonText(
          title: "THE DOCKET",
          color: Color(0xff1d3253),
          fw: FontWeight.bold,
        ),
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(Icons.menu, color: Color(0xff1d3253)),
          ),
        ),
      ),
      drawer: DrawerWidget(),
      body: ListView.builder(itemCount: 5,
        itemBuilder: (context,i)=>NoteCardWidget(),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff92c8a5),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (a)=>NoteAddEditScreen(screenType: 'Add your notes',)));
        },
        child: Icon(Icons.add_circle_outline,color: Color(0xff1d3253),fontWeight: FontWeight.bold,),
      ),
    );
  }
}


