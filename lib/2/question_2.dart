import 'package:flutter/material.dart';
import 'package:flutter_interview_test/2/widgets/card_widget.dart';

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CardWidget(),
      ),
    );
  }
}
