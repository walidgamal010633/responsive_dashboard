import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';



class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key, required this.text, this.backgroundColor, this.textcolor});
  final String text;
  final Color? backgroundColor, textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: () {},
          child: Text(
            text,
            style:
                AppStyles.styleSemiBold18(context).copyWith(color: textcolor),
          )),
    );
  }
}
