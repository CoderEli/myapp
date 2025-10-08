import 'package:flutter/material.dart';
import 'package:myapp/models/Note.dart';

class DetailsScreen extends StatelessWidget {
  final Note note;
  const DetailsScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(child: Text(note.text)),
    );
  }
}
