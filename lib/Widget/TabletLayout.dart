import 'package:dash_board/Widget/DashBoard_Mobile_layout.dart';
import 'package:dash_board/Widget/Drawar%20widget/CustomDrawar.dart';
import 'package:flutter/material.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawar(),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 32),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: DashBoard_Mobile_layout(),
            ),
          ),
        ),
      ],
    );
  }
}
