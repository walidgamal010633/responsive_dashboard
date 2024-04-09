import 'package:dash_board/utils/app_Style.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 400 / 150,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage(
                Assets.imagesCardBackground,
              ),
              fit: BoxFit.fill),
          color: const Color(0xff4eb7f8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 42),
              title: Text(
                "Name Card",
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(
                Assets.imagesGallery,
              ),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8192",
                    style: AppStyles.styleSemiBold20(context)
                        .copyWith(color: Colors.white),
                  ),
                  // Text(
                  //   "12/20 - 124",
                  //   style: AppStyles.styleRegular16(context)
                  //       .copyWith(color: Colors.white),
                  // ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
