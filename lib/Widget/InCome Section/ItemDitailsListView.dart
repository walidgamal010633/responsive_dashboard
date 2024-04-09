import 'package:dash_board/Widget/InCome%20Section/IncomeDitails.dart';
import 'package:dash_board/models/ItemDitailsModel.dart';
import 'package:flutter/material.dart';

class ItemDitailsListView extends StatelessWidget {
  const ItemDitailsListView({super.key});
  static const List<ItemDetailsModel> item = [
    ItemDetailsModel(
        titel: "Design Service", value: "40%", color: Color(0xff208BC7)),
    ItemDetailsModel(
        titel: "Design Product", value: "25%", color: Color(0xFF4DB7F2)),
    ItemDetailsModel(
        titel: "Design royalti", value: "20%", color: Color(0xFF064060)),
    ItemDetailsModel(titel: "other", value: "15%", color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: item.map((e) => IncomeDitails(itemDetailsModel: e)).toList(),
    );
    return ListView.builder(
        shrinkWrap: true,
        itemCount: item.length,
        itemBuilder: (context, index) {
          return IncomeDitails(itemDetailsModel: item[index]);
        });
  }
}
