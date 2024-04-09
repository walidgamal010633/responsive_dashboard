import 'dart:developer';

import 'package:dash_board/Widget/InCome%20Section/DetilesIncome.dart';
import 'package:dash_board/Widget/InCome%20Section/IncomeChart.dart';
import 'package:dash_board/Widget/InCome%20Section/ItemDitailsListView.dart';
import 'package:dash_board/utils/SizeConfing.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
// log(width.toString());
    return width < SizeConfing.DesktobLayout || width > 1510
        ? const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: ItemDitailsListView(),
              ),
            ],
          )
        :const Padding(
        padding: EdgeInsets.all(24.0),
        child: DetilesIncome(),
                  );
  }
}
