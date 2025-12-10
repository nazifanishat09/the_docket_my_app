import 'package:flutter/material.dart';
import 'package:the_docket_app/Widget/text_box.dart';

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
        itemBuilder: (context,i)=>InkWell(
        onLongPress: () {
          showDialog(
            context: context,
            builder: (a) => AlertDialog(
              title: CommonText(
                title: 'Confirm Action',
                fw: FontWeight.w900,
              ),
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
          padding: const EdgeInsets.only(left: 10,right: 10,top:3,),
          child: Card(shadowColor: Colors.green,elevation: 3,
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
      ),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff92c8a5),
        onPressed: () {},
        child: Icon(Icons.add_circle_outline,color: Color(0xff1d3253),fontWeight: FontWeight.bold,),
      ),
    );
  }
}
