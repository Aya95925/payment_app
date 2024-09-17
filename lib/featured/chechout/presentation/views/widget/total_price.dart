import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';


class TotalPrice  extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.font24Black600w,
        ),
        const Spacer(),
        Text(
          value,
          style: Styles.font24Black600w,
        ),
      ],
    );
  }
}