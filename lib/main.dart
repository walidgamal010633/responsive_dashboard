
import 'package:dash_board/view/dashBoard_View.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Responsive_DashBoard());
}
class Responsive_DashBoard extends StatelessWidget {
  const Responsive_DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DashBoard_View() ,
    );
  }
}