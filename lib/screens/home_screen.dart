import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/models/note.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> notes = [
    Note(
      1,
      "My new note 1",
      "My best note is yet to come but i hope i will be able",
    ),
    Note(
      2,
      "My new note 2",
      "My best note is yet to come but i hope i will be able",
    ),
    Note(
      3,
      "My new note 3",
      "My best note is yet to come but i hope i will be able",
    ),
    Note(
      4,
      "My new note 4",
      "My best note is yet to come but i hope i will be able",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Note app"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            context.go("/details", extra: notes[index]);
          },
          child: ListTile(
            title: Text(notes[index].title),
            subtitle: Text(notes[index].text),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
