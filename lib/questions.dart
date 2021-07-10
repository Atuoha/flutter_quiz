import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String caption;
  Question(this.caption);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(caption,
          style: TextStyle(fontSize: 25, fontFamily: 'Helvetica'),
          textAlign: TextAlign.center),
    );
  }
}
