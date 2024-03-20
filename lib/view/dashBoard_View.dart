
import 'package:dash_board/Widget/DashBoardDesktobLayout.dart';
import 'package:dash_board/Widget/adabtive_layout.dart';
import 'package:flutter/material.dart';

class DashBoard_View extends StatelessWidget {
  const DashBoard_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Adaptivelayou(
          mobileLayout: (context) => const SizedBox(),
          TabletLayout: (context) => const SizedBox(),
          DesktobLayout: (context) => const DashBoardDesktobLayout()),
    );
  }
}

