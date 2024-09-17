import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';


class OrderedInfoItem extends StatelessWidget {
  const OrderedInfoItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.font18Black400w,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.font18Black400w,
        ),
      ],
    );
  }
}