import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IcomeChartState();
}

class _IcomeChartState extends State<IncomeChart> {
  int ActiveIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        piechartdata(),
      ),
    );
  }

  PieChartData piechartdata() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          if (pieTouchResponse != null) {
            ActiveIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
            setState(() {});
          }
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: ActiveIndex == 0 ? 45 : 40,
          showTitle: false,
          color: const Color(0xff208BC7),
          value: 40,
        ),
        PieChartSectionData(
          radius: ActiveIndex == 1 ? 45 : 40,
          color: const Color(0xFF064060),
          value: 20,
          showTitle: false,
        ),
        PieChartSectionData(
          radius: ActiveIndex == 2 ? 45 : 40,
          color: const Color(0xFF4DB7F2),
          value: 25,
          showTitle: false,
        ),
        PieChartSectionData(
          radius: ActiveIndex == 3 ? 45 : 40,
          color: const Color(0xFFE2DECD),
          value: 15,
          showTitle: false,
        ),
      ],
    );
  }
}
