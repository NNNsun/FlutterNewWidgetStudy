import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout/default_layout.dart';

class FlChartScreen extends StatelessWidget {
  static String get routeName => 'fl_chart';
  const FlChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<FlSpot> leftData = [
      const FlSpot(0, 5),
      const FlSpot(1, 10),
      const FlSpot(2, 15),
      const FlSpot(3, 20),
    ];

    List<FlSpot> rightData = [
      const FlSpot(0, 100),
      const FlSpot(1, 200),
      const FlSpot(2, 300),
      const FlSpot(3, 400),
    ];
    return DefaultLayout(
      title: routeName,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              width: 500,
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: const FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                      ),
                    ),
                  ),

                  borderData: FlBorderData(
                    show: true,
                    border:
                        Border.all(color: const Color(0xff37434d), width: 1),
                  ),
                  minX: 0,
                  maxX: 3,
                  minY: 0, // Set your left axis minimum here
                  maxY: 25, // Set your left axis maximum here

                  lineBarsData: [
                    LineChartBarData(
                      spots: leftData,
                      isCurved: true,
                      color: Colors.blue,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                    LineChartBarData(
                      spots: rightData,
                      isCurved: true,
                      color: Colors.red,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 600,
              width: 500,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                        value: 10, title: "사과", color: Colors.amber),
                    PieChartSectionData(
                        value: 20, title: "바나나", color: Colors.red, radius: 80),
                    PieChartSectionData(value: 30, title: "수박", radius: 30),
                    PieChartSectionData(
                        value: 40, title: "참외", color: Colors.blue, radius: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
