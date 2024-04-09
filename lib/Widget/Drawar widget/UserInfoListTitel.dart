import 'package:dash_board/models/UserInfoModel.dart';
import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTitel extends StatelessWidget {
  const UserInfoListTitel({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image,fit: BoxFit.fill,),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        subtitle: Text(
         userInfoModel.subtitel,
          style: AppStyles.styleRegular14(context),
        ),
      ),
    );
  }
}
