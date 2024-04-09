import 'package:dash_board/Widget/All%20Expensess/All_Expensess.dart';
import 'package:dash_board/Widget/MyCardAndTransactionHistory/Card_Section.dart/MyCardSection.dart';
import 'package:dash_board/Widget/MyCardAndTransactionHistory/Transction_History/Transction_History.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 10,
          ),
          SizedBox(height: 12,),
          Transction_History()
        ],
      ),
    );
  }
}
