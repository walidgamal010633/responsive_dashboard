import 'package:dash_board/Widget/All%20Expensess/All_ExpensessItemHeader.dart';
import 'package:dash_board/models/All_ExpensessItem_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/app_Style.dart';

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.all_expensessItemModel,
  });

  final All_ExpensessItemModel all_expensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          All_ExpensessItemHeader(
            image: all_expensessItemModel.image,
            ImageBackground: Colors.white.withOpacity(0.1000000000000),
            imagecolor: Colors.white,
          ),
          const SizedBox(
            height: 24,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              all_expensessItemModel.titel,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              all_expensessItemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              all_expensessItemModel.prise,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
