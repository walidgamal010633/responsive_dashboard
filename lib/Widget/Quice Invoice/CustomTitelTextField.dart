import 'package:dash_board/Widget/Quice%20Invoice/CustomTextField.dart';
import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';



class CustomTitelTextField extends StatelessWidget {
  const CustomTitelTextField({super.key, required this.Titel, required this.Hint});
final String Titel , Hint ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(Titel,style: AppStyles.styleMedium16(context).copyWith(fontWeight: FontWeight.w700),),
      const SizedBox(height: 12,),
       CustomTextField(Hint: Hint,),
    ],);
  }
}
