import 'package:dash_board/Widget/All%20Expensess/All_Expensess.dart';
import 'package:dash_board/Widget/InCome%20Section/IncomeSectionBody.dart';
import 'package:dash_board/Widget/InCome%20Section/incomeHeader.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [incomeHeader(), IncomeSectionBody()],
      ),
    );
  }
}
