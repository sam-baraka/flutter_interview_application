import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview_test/2/question_2.dart';
import 'package:flutter_interview_test/3/question_3.dart';

import '1/question_1.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                "Click on the buttons below to view my answer for each respective question"),
            CupertinoButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Question1()));
              },
              color: Colors.blue,
              child: Text("Question 1"),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Question2()));
              },
              color: Colors.blue,
              child: Text("Question 2"),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Question3()));
              },
              color: Colors.blue,
              child: Text("Question 3"),
            ),
          ],
        ),
      ),
    );
  }
}
