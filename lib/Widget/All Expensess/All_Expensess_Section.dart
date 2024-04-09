import 'package:flutter/material.dart';

import '../Quice Invoice/QuiceInvoice.dart';
import 'All_Expensess.dart';



class All_Expensess_Section extends StatelessWidget {
  const All_Expensess_Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [All_Expensess(),
     SizedBox(height: 28,),
      QuiceInvoice(),],
    );
  }
}
