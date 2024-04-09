import 'package:dash_board/Widget/InCome%20Section/IncomeSection.dart';
import 'package:dash_board/Widget/Drawar%20widget/CustomDrawar.dart';
import 'package:dash_board/Widget/MyCardAndTransactionHistory/MyCardAndTransactionHistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'All Expensess/All_Expensess_Section.dart';

class DashBoardDesktobLayout extends StatelessWidget {
  const DashBoardDesktobLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [
          Expanded(flex: 1, child: CustomDrawar()),
          SizedBox(
            width: 28,
          ),
          Expanded(
            flex: 4,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 28.0),
                          child: All_Expensess_Section(),
                        ),
                      ),
                      
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.all(28.0),
                          child: Column(
                            children: [
                              MyCardAndTransactionHistory(),
                              SizedBox(
                                height: 28,
                              ),
                              Expanded(
                                child: IncomeSection(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

   