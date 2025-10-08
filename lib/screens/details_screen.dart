import 'package:flutter/material.dart';
import 'package:myapp/models/note.dart';
import 'package:myapp/widgets/line_background_painter.dart';

class DetailsScreen extends StatefulWidget {
  final Note note;
  const DetailsScreen({super.key, required this.note});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const double lineHeight = 28;
    const double fontSize = 18;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.note.title),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Expanded(
        child: CustomPaint(
          painter: LinedBackgroundPainter(lineHeight: lineHeight),
          child: TextField(
            controller: controller,
            maxLines: null,
            expands: true,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 16, top: 10),
            ),
            style: const TextStyle(fontSize: fontSize, height: 3.2),
            cursorHeight: fontSize * 1.1,
          ),
        ),
      ),
    );
  }
}
