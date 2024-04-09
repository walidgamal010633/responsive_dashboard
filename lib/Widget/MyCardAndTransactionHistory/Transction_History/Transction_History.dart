import 'package:dash_board/Widget/MyCardAndTransactionHistory/Transction_History/TransactionHestoryListView.dart';
import 'package:dash_board/Widget/MyCardAndTransactionHistory/Transction_History/TransctionHistoryHeader.dart';
import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';

class Transction_History extends StatelessWidget {
  const Transction_History({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransctionHistoryHeader(),
        const SizedBox(
          height: 8,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.styleRegular14(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const TransactionHestoryListView(),
      ],
    );
  }
}
