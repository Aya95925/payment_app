import 'package:flutter/material.dart';
import 'package:payment_getway/featured/chechout/presentation/views/widget/payment_details_view_body.dart';

import '../../../../core/utils/widget/build_appbar.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Payment Details',
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child:  PaymentDetailsViewBody(),
      ),
    );
  }
}
