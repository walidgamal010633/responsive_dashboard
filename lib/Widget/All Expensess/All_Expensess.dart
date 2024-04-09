import 'package:dash_board/Widget/All%20Expensess/All_ExpensessHeader.dart';
import 'package:dash_board/Widget/All%20Expensess/All_ExpensessItemListView.dart';
import 'package:flutter/material.dart';

class All_Expensess extends StatelessWidget {
  const All_Expensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          All_ExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          All_ExpensessItemListView(),
        ],
      ),
    );
  }
}

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: child);
  }
}
