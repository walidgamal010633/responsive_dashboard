import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';
import 'RangeOptions.dart';

class All_ExpensessHeader extends StatelessWidget {
  const All_ExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "ALL Expensess",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}
