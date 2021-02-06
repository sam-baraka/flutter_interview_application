import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                "Click on the buttons bellow to view my answer for the respective question"),
            CupertinoButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text("Question 1"),
            ),
            CupertinoButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text("Question 2"),
            ),
            CupertinoButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text("Question 3"),
            ),
          ],
        ),
      ),
    );
  }
}
