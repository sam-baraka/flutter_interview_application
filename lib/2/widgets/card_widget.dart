import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_interview_test/cubits/select_team_cubit.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/woman_balck.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        color: Colors.black26,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Which of our potential Carabao Cup third-round opponents do you preffer?",
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<SelectTeamCubit>()
                                    .select(value: 1);
                              },
                              child: Container(
                                color: Colors.black54,
                                height: 30,
                                width: 250,
                                child:
                                    context.watch<SelectTeamCubit>().state == 1
                                        ? Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.red,
                                                  child: Text("READING",
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child: Text("51%",
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              )
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              Container(
                                                child: Text("READING",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ),
                                            ],
                                          ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<SelectTeamCubit>()
                                    .select(value: 2);
                              },
                              child: Container(
                                color: Colors.black54,
                                height: 30,
                                width: 250,
                                child:
                                    context.watch<SelectTeamCubit>().state == 2
                                        ? Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.red,
                                                  child: Text("LUTON TOWN",
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child: Text("49%",
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                ),
                                              )
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              Container(
                                                child: Text("LUTON TOWN",
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ),
                                            ],
                                          ),
                              ),
                            ),
                            context.watch<SelectTeamCubit>().state == 1 ||
                                    context.watch<SelectTeamCubit>().state == 2
                                ? Text(
                                    "They meet in the second round at 18:00 BST.")
                                : Container()
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Expanded(child: Text("6m")),
                  Expanded(child: Icon(Icons.share)),
                  Expanded(child: Icon(Icons.share))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
