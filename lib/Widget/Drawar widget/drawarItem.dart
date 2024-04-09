import 'package:dash_board/Widget/Drawar%20widget/Active_andInactive_item.dart';
import 'package:dash_board/models/DrawarItemModel.dart';
import 'package:flutter/material.dart';

class drawarItem extends StatelessWidget {
  const drawarItem(
      {super.key, required this.drawarItemModel, required this.IsActive});
  final bool IsActive;
  final DrawarItemModel drawarItemModel;
  @override
  Widget build(BuildContext context) {
    return IsActive
        ? activeDrawarItem(drawarItemModel: drawarItemModel)
        : InactiveItem(drawarItemModel: drawarItemModel);
  }
}
