import 'package:dash_board/Widget/All%20Expensess/All_Expensess.dart';
import 'package:dash_board/Widget/Quice%20Invoice/LatestTransaction.dart';
import 'package:dash_board/Widget/Quice%20Invoice/QuiceInvoiceForm.dart';
import 'package:dash_board/Widget/Quice%20Invoice/QuiceInvoiceHeader.dart';
import 'package:flutter/material.dart';


class QuiceInvoice extends StatelessWidget {
  const QuiceInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuiceInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1f1),
          ),
          QuiceInvoiceForm()
        ],
      ),
    );
  }
}
