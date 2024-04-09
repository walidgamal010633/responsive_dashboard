import 'package:dash_board/Widget/All%20Expensess/ActiveAllExpensessItem.dart';
import 'package:dash_board/Widget/All%20Expensess/InActiveAllExpensessItem.dart';
import 'package:dash_board/models/All_ExpensessItem_Model.dart';
import 'package:flutter/material.dart';

class All_ExpensessItem extends StatelessWidget {
  const All_ExpensessItem(
      {super.key,
      required this.all_expensessItemModel,
      required this.IsSelected});
  final All_ExpensessItemModel all_expensessItemModel;
  final bool IsSelected;
  @override
  Widget build(BuildContext context) {
    return IsSelected
        ? ActiveAllExpensessItem(all_expensessItemModel: all_expensessItemModel)
        : InActiveAllExpensessItem(
            all_expensessItemModel: all_expensessItemModel);
  }
}
