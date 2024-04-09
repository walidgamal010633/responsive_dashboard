import 'package:dash_board/Widget/All%20Expensess/All_ExpensessItemHeader.dart';
import 'package:dash_board/models/All_ExpensessItem_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/app_Style.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.all_expensessItemModel,
  });

  final All_ExpensessItemModel all_expensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xFF1F1F1F1), width: 1.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          All_ExpensessItemHeader(image: all_expensessItemModel.image),
          const SizedBox(
            height: 24,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              all_expensessItemModel.titel,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              all_expensessItemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              all_expensessItemModel.prise,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
