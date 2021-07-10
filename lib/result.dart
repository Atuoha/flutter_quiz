import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String score;
  final reset;
  Result(this.score, this.reset);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
              score.toString(),
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            child: Text('Restart Quiz'),
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
