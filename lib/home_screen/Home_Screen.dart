import 'package:flutter/material.dart';
import 'package:the_docket_app/Widget/text_box.dart';
import 'package:the_docket_app/api/get.dart';
import 'package:the_docket_app/home_screen/widget/card_widget.dart';
import 'package:the_docket_app/home_screen/widget/note_add_edit.dart';

import '../Drawer/drawer.dart';
import '../api/delete_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List noteData = [];
  bool isLoading = false;

  fetchNoteData() async {
    isLoading = true;
    setState(() {});
    var data = await GetNoteData().getData();
    noteData = data;
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    fetchNoteData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5FCF9),
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
      body: isLoading == true
          ? Center(child: CircularProgressIndicator(color: Color(0xff92c8a5)))
          : noteData.isEmpty
          ? Center(child: CommonText(title: "No Notes Available"))
          : ListView.builder(
              itemCount: noteData.length,
              itemBuilder: (context, i) => NoteCardWidget(
                data: noteData[i],
                onTapDelete: () async {
                  await DeleteNote().deleteNote(id: noteData[i]['id']);
                  fetchNoteData();
                  Navigator.pop(context);
                }, onTapUpdate:  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (a) => NoteAddEditScreen(
                      screenType: "Edit your Notes",
                      note: noteData[i]["note"],
                    ),
                  ),
                ).then((v){fetchNoteData();});

              },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff92c8a5),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (a) => NoteAddEditScreen(screenType: 'Add your notes'),
            ),
          ).then((v) {
            fetchNoteData();
          });
        },
        child: Icon(
          Icons.add_circle_outline,
          color: Color(0xff1d3253),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
