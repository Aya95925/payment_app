import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/styles.dart';


class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.title, this.ontap});
  final String title;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff34A853),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: Styles.font22Black500w,
          ),
        ),
      ),
    );
  }
}
