


import 'package:dash_board/view/dashBoard_View.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder:(context)=> const Responsive_DashBoard()));
}
class Responsive_DashBoard extends StatelessWidget {
  const Responsive_DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
       locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'DashBoard',                                   
      debugShowCheckedModeBanner: false,
      home:const DashBoard_View() ,
    );
  }
}