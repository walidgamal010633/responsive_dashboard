import 'package:dash_board/models/ItemDitailsModel.dart';
import 'package:flutter/material.dart';
import '../../utils/app_Style.dart';

class IncomeDitails extends StatelessWidget {
  const IncomeDitails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: itemDetailsModel.color),
      ),
      title: Text(
        itemDetailsModel.titel,
        style: AppStyles.styleRegular14(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
