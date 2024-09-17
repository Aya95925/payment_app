import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'payment_method_item.dart';

class PaymentMethodListView extends StatefulWidget {
  PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  int activeIndex = 0;

  final List<String> paymentMethodItems = [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
    'assets/images/pay.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: paymentMethodItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
              ),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  isActive: activeIndex == index,
                  image: paymentMethodItems[index],
                ),
              ),
            );
          }),
    );
  }
}
