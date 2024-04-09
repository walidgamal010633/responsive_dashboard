import 'package:dash_board/Widget/MyCardAndTransactionHistory/Card_Section.dart/MyCard.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';


class MYCardPageView extends StatelessWidget {
  const MYCardPageView({super.key, required this.pageController});
final PageController pageController;
  @override
  Widget build(BuildContext context) {

    return ExpandablePageView.builder(
controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 3, itemBuilder: (context , index){
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: const MyCard(),
      );
    });
    // return 
    
    //  AspectRatio(
    //   aspectRatio: 420 / 215,
    //   child: PageView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: 3,
    //     itemBuilder: (context, index) {
    //       return const Card();
    //   }),
    // );
  }
}
