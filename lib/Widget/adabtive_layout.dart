import 'package:dash_board/utils/SizeConfing.dart';
import 'package:flutter/material.dart';

class Adaptivelayou extends StatelessWidget {
  const Adaptivelayou(
      {super.key,
      required this.mobileLayout,
      required this.TabletLayout,
      required this.DesktobLayout});
  final WidgetBuilder mobileLayout, TabletLayout, DesktobLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < SizeConfing.TabletLayout) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfing.DesktobLayout) {
          return TabletLayout(context);
        } else {
          return DesktobLayout(context);
        }
      },
    );
  }
}
