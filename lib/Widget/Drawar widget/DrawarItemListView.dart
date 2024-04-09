import 'package:dash_board/Widget/Drawar%20widget/drawarItem.dart';
import 'package:dash_board/models/DrawarItemModel.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:flutter/material.dart';

class DrawarItemListView extends StatefulWidget {
  const DrawarItemListView({
    super.key,
  });

  @override
  State<DrawarItemListView> createState() => _DrawarItemListViewState();
}

final List<DrawarItemModel> items = [
  DrawarItemModel(image: Assets.imagesDashboard, titel: "Dashboard"),
  DrawarItemModel(image: Assets.imagesMyTransctions, titel: "My Transaction"),
  DrawarItemModel(image: Assets.imagesStatistics, titel: "Statistics"),
  DrawarItemModel(image: Assets.imagesWalletAccount, titel: "Wallet Account"),
  DrawarItemModel(image: Assets.imagesMyInvestments, titel: "My Ivvestments"),
];
int IndexNumper = 10;

class _DrawarItemListViewState extends State<DrawarItemListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index != IndexNumper) {
              setState(() {
                IndexNumper = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: drawarItem(
              drawarItemModel: items[index],
              IsActive: IndexNumper == index,
            ),
          ),
        );
      },
    );
  }
}
