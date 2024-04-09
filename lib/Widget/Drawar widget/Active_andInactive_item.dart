import 'package:dash_board/models/DrawarItemModel.dart';
import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InactiveItem extends StatelessWidget {
  const InactiveItem({super.key, required this.drawarItemModel});
  final DrawarItemModel drawarItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawarItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          drawarItemModel.titel,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}

class activeDrawarItem extends StatelessWidget {
  const activeDrawarItem({super.key, required this.drawarItemModel});
  final DrawarItemModel drawarItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawarItemModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          drawarItemModel.titel,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        
        width: 4,
        decoration:const BoxDecoration(
          color:  Color(0xff4EB7F8),
        ),
      ),
    );
  }
}
