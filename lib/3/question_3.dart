import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview_test/3/widgets/chart_widget.dart';
import 'package:flutter_interview_test/cubits/chart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Question3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: CupertinoNavigationBar(
        middle: Text("Question 3"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Men",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text("Women",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)))
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: TextEditingController(
                        text: context.read<MaleChartCubit>().state.toString()),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    onChanged: (value) {
                      context
                          .read<MaleChartCubit>()
                          .update(value: int.parse(value));
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextFormField(
                    controller: TextEditingController(
                        text:
                            context.read<FemaleChartCubit>().state.toString()),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    onChanged: (value) {
                      context
                          .read<FemaleChartCubit>()
                          .update(value: int.parse(value));
                    },
                  ),
                ),
              ],
            ),
            Flexible(
              // height: 350,
              child: Card(
                  color: Colors.grey[200],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      ChartWidget(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Men"),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                border: Border.all(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Women"),
                          Expanded(
                            child: Container(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
