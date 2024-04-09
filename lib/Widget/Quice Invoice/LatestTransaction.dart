import 'package:dash_board/Widget/Quice%20Invoice/LatestTransactionListView.dart';
import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Lastest Transaction",
            style: AppStyles.styleSemiBold16(context).copyWith(fontSize: 15),
          ),
        ),
        const SizedBox(
          
        ),
        const LatestTransactionListView()
      ],
    );
  }
}
