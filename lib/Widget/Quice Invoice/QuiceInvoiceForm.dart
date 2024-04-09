import 'package:dash_board/Widget/Quice%20Invoice/CustomBottom.dart';
import 'package:dash_board/utils/app_Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CustomTitelTextField.dart';

class QuiceInvoiceForm extends StatelessWidget {
  const QuiceInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitelTextField(
                Titel: "Customer Name",
                Hint: "Customer Name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitelTextField(
                Titel: "Customer Name",
                Hint: "Customer Name",
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTitelTextField(
              Titel: "Customer Name",
              Hint: "Customer Name",
            )),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitelTextField(
                Titel: "Customer Name",
                Hint: "Customer Name",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Expanded(
              child: CustomBottom(
                text: "Add More Details",
                backgroundColor: Colors.white,
                textcolor: Color(0xFF4DB7F2),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomBottom(
              text: "Send Money",
            ))
          ],
        )
      ],
    );
  }
}
