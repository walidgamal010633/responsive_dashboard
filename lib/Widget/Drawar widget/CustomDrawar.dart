import 'package:dash_board/Widget/Drawar%20widget/Active_andInactive_item.dart';
import 'package:dash_board/Widget/Drawar%20widget/DrawarItemListView.dart';
import 'package:dash_board/Widget/Drawar%20widget/UserInfoListTitel.dart';
import 'package:dash_board/models/DrawarItemModel.dart';
import 'package:dash_board/models/UserInfoModel.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomDrawar extends StatelessWidget {
  const CustomDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.5,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTitel(
                userInfoModel: UserInfoModel(
                    title: "Lekan Okeowo",
                    subtitel: "demo@gmail.com",
                    image: Assets.imagesAvatar3)),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawarItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InactiveItem(
                    drawarItemModel: DrawarItemModel(
                        image: Assets.imagesSettings,
                        titel: "Settings System")),
                const SizedBox(
                  height: 10,
                ),
                InactiveItem(
                    drawarItemModel: DrawarItemModel(
                        image: Assets.imagesLogout, titel: "Logout account")),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
