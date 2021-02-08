import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview_test/home.dart';

void main() {
  runApp(InterviewApp());
}

class InterviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
