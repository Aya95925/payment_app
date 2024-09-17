import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem(
      {super.key, required this.isActive, required this.image});
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 52.h,
      width: 98.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: isActive ? const Color(0xff34A853) : Colors.grey,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: isActive ? const Color(0xff34A853) : Colors.white,
            spreadRadius: 0,
            blurRadius: 4.5,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      duration: const Duration(milliseconds: 150),
      child: Container(
        child: Center(
          child: SvgPicture.asset(
            image,
            height: 26.h,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
