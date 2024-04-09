import 'package:dash_board/Widget/All%20Expensess/All_Expensess_Section.dart';
import 'package:dash_board/Widget/InCome%20Section/IncomeSection.dart';
import 'package:dash_board/Widget/MyCardAndTransactionHistory/MyCardAndTransactionHistory.dart';
import 'package:flutter/material.dart';



class DashBoard_Mobile_layout extends StatelessWidget {
  const DashBoard_Mobile_layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only( bottom: 32,top: MediaQuery.sizeOf(context).width> 800 ? 0 : 80),
        child:const Column(
          children: [
            All_Expensess_Section(),
            SizedBox(
              height: 32,
            ),
            MyCardAndTransactionHistory(),
            SizedBox(
              height: 32,
            ),
            IncomeSection()
          ],
        ),
      ),
    );
  }
}
