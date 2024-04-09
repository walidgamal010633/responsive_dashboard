import 'package:dash_board/Widget/Drawar%20widget/UserInfoListTitel.dart';
import 'package:dash_board/models/UserInfoModel.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:flutter/material.dart';


class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<UserInfoModel> items = const [
    UserInfoModel(
        title: "walid Gamal",
        subtitel: "walid22@gmail.com",
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: "Malak Gamla",
        subtitel: "Malak00@gmail.com",
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: "Madrain Andi",
        subtitel: "Madrai20n@gmail.com",
        image: Assets.imagesAvatar3),
        
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTitel(userInfoModel: e)),
            )
            .toList(),
      ),
    );
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
                child: UserInfoListTitel(userInfoModel: items[index]));
          }),
    );
  }
}
