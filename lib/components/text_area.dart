import 'package:flutter/material.dart';

class TextArea extends StatefulWidget {
  @override
  _TextAreaState createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  String contentArea = '';

  void addText(String cont) {
    setState(() {
      contentArea += cont;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Text(
              contentArea,
            ),
          )
        ],
      ),
    );
  }
}
