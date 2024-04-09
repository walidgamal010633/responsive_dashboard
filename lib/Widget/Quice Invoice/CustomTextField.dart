import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';



class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.Hint});
final String Hint ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(
      hintText:Hint ,
      hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xFFAAAAAA)),
      fillColor: Color(0xFFFAFAFA),
      filled: true,
      border: BuildBorder(),
      enabledBorder: BuildBorder(),
      focusedBorder: BuildBorder(),
    ),);
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
      
borderRadius: BorderRadius.circular(12),
borderSide: BorderSide(color: Color(0xFFAAAAAA).withOpacity(0.1),),
    );
  }
}