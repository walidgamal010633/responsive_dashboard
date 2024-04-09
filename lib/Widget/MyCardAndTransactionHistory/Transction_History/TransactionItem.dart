import 'package:flutter/material.dart';

import '../../../models/Transaction_HistoryModel.dart';
import '../../../utils/app_Style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transction_historyModel});
  final Transction_HistoryModel transction_historyModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          transction_historyModel.titel,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transction_historyModel.date,
          style: AppStyles.styleRegular14(context)
              .copyWith(color:const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transction_historyModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transction_historyModel.isWithdrawal
                  ? const Color(0xFFf3735E)
                  : const Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
