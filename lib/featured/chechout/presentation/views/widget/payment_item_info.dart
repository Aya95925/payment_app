import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class paymentItemInfo extends StatelessWidget {
  const paymentItemInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.font18Black400w,
        ),
        Text(
          value,
          style: Styles.font18Black600w,
        ),
      ],
    );
  }
}