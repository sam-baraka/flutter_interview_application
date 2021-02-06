import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/woman_balck.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.black54,
            body: Stack(
              children: [
                Positioned(
                    top: 40,
                    right: 20,
                    child: Icon(
                      Icons.dehaze,
                      color: Colors.white,
                    )),
                Positioned(
                  left: 0,
                  top: 40,
                  right: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Text(
                          "Hello,\nAnne Kibe",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 40),
                        child: Row(
                          children: [
                            Text(
                              "KSH 135.50",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Text(
                              "KSH 2,360.30",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 40, bottom: 20),
                        child: Row(
                          children: [
                            Text(
                              "Today's Earnings",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.lightBlue),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Text(
                              "Total Earnings",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.lightBlue),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: ListView(
                          children: [
                            SizedBox(
                              width: 100,
                              child: TabBar(
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorColor: Colors.white,
                                labelStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                tabs: [
                                  Row(
                                    children: [
                                      Text(
                                        "Friends",
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Community",
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
