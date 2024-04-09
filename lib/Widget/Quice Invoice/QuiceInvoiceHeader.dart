import 'package:flutter/material.dart';

import '../../utils/app_Style.dart';

class QuiceInvoiceHeader extends StatelessWidget {
  const QuiceInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quice Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          height: 40,
          width: 40,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F8),
          ),
        )
      ],
    );
  }
}
