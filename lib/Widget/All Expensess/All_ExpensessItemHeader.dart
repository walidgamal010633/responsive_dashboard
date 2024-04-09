import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class All_ExpensessItemHeader extends StatelessWidget {
  const All_ExpensessItemHeader(
      {super.key, required this.image, this.ImageBackground, this.imagecolor});
  final String image;
  final Color? ImageBackground, imagecolor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 60),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: ShapeDecoration(
                      color: ImageBackground ?? const Color(0xFFFAFAFA),
                      shape: const OvalBorder(),
                    ),
                    child: Center(
                      child: SvgPicture.asset(image,
                          colorFilter: ColorFilter.mode(
                              imagecolor ?? const Color(0xff4eb7f8),
                              BlendMode.srcIn)),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Icon(Icons.arrow_forward_ios_outlined,
                color: imagecolor == null ? Colors.black : Colors.white),
          ],
        ),
      ],
    );
  }
}
