import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_interview_test/cubits/chart_cubit.dart';

class ChartWidget extends StatefulWidget {
  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        color: Colors.grey[200],
        child: AspectRatio(
          aspectRatio: 1,
          child: PieChart(
            PieChartData(
                pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                  setState(() {
                    if (pieTouchResponse.touchInput is FlLongPressEnd ||
                        pieTouchResponse.touchInput is FlPanEnd) {
                      touchedIndex = -1;
                    } else {
                      touchedIndex = pieTouchResponse.touchedSectionIndex;
                    }
                  });
                }),
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 0,
                sections: showingSections()),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 20 : 16;
      final double radius = isTouched ? 110 : 100;
      final double widgetSize = isTouched ? 55 : 40;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.white,
            value: context.watch<MaleChartCubit>().state.toDouble(),
            title:
                '${context.watch<MaleChartCubit>().percentage(female: context.watch<FemaleChartCubit>().state)} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.lightBlue,
            value: context.watch<FemaleChartCubit>().state.toDouble(),
            title:
                '${context.watch<FemaleChartCubit>().percentage(male: context.watch<MaleChartCubit>().state)} %',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          return null;
      }
    });
  }
}
