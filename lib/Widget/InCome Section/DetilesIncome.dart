import 'package:dash_board/utils/app_Style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetilesIncome extends StatefulWidget {
  const DetilesIncome({super.key});

  @override
  State<DetilesIncome> createState() => _DetilesIncomeState();
}

class _DetilesIncomeState extends State<DetilesIncome> {
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
          titlePositionPercentageOffset: ActiveIndex == 0 ? 1.5 : null,
          title: ActiveIndex == 0 ? "Design Service" : "40%",
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: ActiveIndex == 0 ? Colors.black : Colors.white),
          color: const Color(0xff208BC7),
          value: 40,
        ),
        PieChartSectionData(
          radius: ActiveIndex == 1 ? 45 : 40,
          color: const Color(0xFF064060),
          value: 20,
          titlePositionPercentageOffset: ActiveIndex == 1 ? 2.5: null,
          title: ActiveIndex == 1 ? "Design Product" : "20%",
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: ActiveIndex == 1 ? Colors.black : Colors.white),
        ),
        PieChartSectionData(
          radius: ActiveIndex == 2 ? 45 : 40,
          color: const Color(0xFF4DB7F2),
          value: 25,
           titlePositionPercentageOffset: ActiveIndex == 2 ? 1.4 : null,
          title: ActiveIndex == 2 ? "Design royalti" : "25%",
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: ActiveIndex == 2 ? Colors.black : Colors.white),
        ),
        PieChartSectionData(
          radius: ActiveIndex == 3 ? 45 : 40,
          color: const Color(0xFFE2DECD),
          value: 15,
           titlePositionPercentageOffset: ActiveIndex == 3 ? 1.6 : null,
          title: ActiveIndex == 3 ? "other" : "15%",
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: ActiveIndex == 3 ? Colors.black : Colors.white),
        ),
      ],
    );
  }
}
