import 'package:dash_board/Widget/MyCardAndTransactionHistory/Card_Section.dart/CustomIndicator.dart';
import 'package:flutter/material.dart';


class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, this.currentpageIndex});
final currentpageIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding:const EdgeInsets.only(right: 8 , left: 4),
          child: CustomIndicator(Isloading: index == currentpageIndex ),
        ),
      ),
    );
  }
}
