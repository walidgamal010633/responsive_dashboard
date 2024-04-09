
import 'package:dash_board/Widget/All%20Expensess/All_ExpensessItemListView.dart';
import 'package:dash_board/Widget/MyCardAndTransactionHistory/Transction_History/TransactionItem.dart';
import 'package:flutter/material.dart';

import '../../../models/Transaction_HistoryModel.dart';

class TransactionHestoryListView extends StatelessWidget {
  const TransactionHestoryListView({super.key});
  static const List<Transction_HistoryModel> Items = [
    Transction_HistoryModel(
        titel: "Cash Withdrawal",
        date: "13 April 2022",
        amount: r" $20.129",
        isWithdrawal: true),
    Transction_HistoryModel(
        titel: "Landing Page Project",
        date: "13 April 2022",
        amount: r" $20.129",
        isWithdrawal: false),
    Transction_HistoryModel(
        titel: "Juni Mobile App Project",
        date: "13 April 2022",
        amount: r" $20.129",
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {

    return Column(children: Items.map((e) => TransactionItem(transction_historyModel:e )).toList(),);
    return ListView.builder(
      shrinkWrap: false,
      itemCount: Items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transction_historyModel: Items[index]);
      },
    );
  }
}
