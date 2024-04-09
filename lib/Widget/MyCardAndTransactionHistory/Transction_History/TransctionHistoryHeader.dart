import 'package:flutter/material.dart';

import '../../../utils/app_Style.dart';



class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(
        "Transction History",style: AppStyles.styleSemiBold20(context),
      ),
      Text("See All",style: AppStyles.styleMedium16(context).copyWith(color:const Color(0xff4EB7F2 )),)
    ],);
  }
}