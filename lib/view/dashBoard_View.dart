import 'package:dash_board/Widget/DashBoardDesktobLayout.dart';
import 'package:dash_board/Widget/DashBoard_Mobile_layout.dart';
import 'package:dash_board/Widget/Drawar%20widget/CustomDrawar.dart';
import 'package:dash_board/Widget/TabletLayout.dart';
import 'package:dash_board/Widget/adabtive_layout.dart';
import 'package:flutter/material.dart';

class DashBoard_View extends StatefulWidget {
  const DashBoard_View({super.key});

  @override
  State<DashBoard_View> createState() => _DashBoard_ViewState();
}

class _DashBoard_ViewState extends State<DashBoard_View> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
            toolbarHeight: 40,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
              elevation: 0,
              backgroundColor: const Color(0xFFF7FAFA),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < 800 ? const CustomDrawar() : null,
      body: Adaptivelayou(
          mobileLayout: (context) => const DashBoard_Mobile_layout(),
          TabletLayout: (context) => const DashBoardTabletLayout(),
          DesktobLayout: (context) => const DashBoardDesktobLayout()),
    );
  }
}
