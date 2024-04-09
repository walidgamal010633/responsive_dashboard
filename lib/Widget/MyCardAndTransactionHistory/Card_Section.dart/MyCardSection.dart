import 'package:dash_board/Widget/MyCardAndTransactionHistory/Card_Section.dart/DotsIndecator.dart';
import 'package:dash_board/Widget/MyCardAndTransactionHistory/Card_Section.dart/MYCardPageView.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_Style.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController = PageController();
  int currentpageIndex = 0;
  @override
  void initState() {
    pageController.addListener(() {
      currentpageIndex = pageController.page!.round();
      setState(() {});
    });

  }
@override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 12,
        ),
        MYCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 8,
        ),
        DotsIndecator(
          currentpageIndex: currentpageIndex,
        ),
      ],
    );
  }
}
