import 'package:dash_board/utils/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/All_ExpensessItem_Model.dart';
import 'All_ExpensessItem.dart';



class All_ExpensessItemListView extends StatefulWidget {
  const All_ExpensessItemListView({super.key});

  @override
  State<All_ExpensessItemListView> createState() =>
      _All_ExpensessItemListViewState();
}

final List<All_ExpensessItemModel> items = [
  const All_ExpensessItemModel(
      image: Assets.imagesBalance,
      titel: "Balance",
      date: "APRIL 2024",
      prise: r"$20.129"),
  const All_ExpensessItemModel(
      image: Assets.imagesIncome,
      titel: "Income",
      date: "APRIL 2024",
      prise: r"$20.129"),
  const All_ExpensessItemModel(
      image: Assets.imagesExpenses,
      titel: "Expenses",
      date: "APRIL 2024",
      prise: r"$20.129"),
];
int selectedIndex = 0;
class _All_ExpensessItemListViewState extends State<All_ExpensessItemListView> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: All_ExpensessItem(
                  all_expensessItemModel: items[0],
                  IsSelected: selectedIndex == 0,
                ),
              ),
      ),
      const SizedBox(width: 8,),
        Expanded(
        child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: All_ExpensessItem(
                  all_expensessItemModel: items[1],
                  IsSelected: selectedIndex == 1,
                ),
              ),
      ),
     const SizedBox(width: 8,),
        Expanded(
        child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: All_ExpensessItem(
                  all_expensessItemModel: items[2],
                  IsSelected: selectedIndex == 2,
                ),
              ),
      ),
    ],);
    
     Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var value = e.value;
        
        return Expanded(
              child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:index ==1 ? 0 : 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: All_ExpensessItem(
                all_expensessItemModel: value,
                IsSelected: selectedIndex == index,
              ),
            ),
          ));
      }).toList(),
    );
  }
}
