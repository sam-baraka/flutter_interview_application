import 'package:flutter/material.dart';

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
                            Container(
                              color: Colors.black54,
                              height: 30,
                              width: 250,
                              child: Center(
                                child: Text("READING",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            Container(
                              color: Colors.black54,
                              height: 30,
                              width: 250,
                              child: Center(
                                child: Text("LUTON TOWN",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
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
