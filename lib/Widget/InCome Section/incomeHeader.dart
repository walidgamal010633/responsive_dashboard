import 'package:dash_board/Widget/All%20Expensess/RangeOptions.dart';
import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';

class incomeHeader extends StatelessWidget {
  const incomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}
