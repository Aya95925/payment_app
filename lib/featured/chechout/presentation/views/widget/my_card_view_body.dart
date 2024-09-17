import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:payment_getway/featured/chechout/presentation/views/widget/payment_method_list_view.dart';

import '../../../../../core/utils/widget/custom_bottom.dart';
import 'orderd_info_item.dart';
import 'total_price.dart';

class MyCardViewBody extends StatelessWidget {
  const MyCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 18.h,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/basket_image.png',
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          const OrderedInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          SizedBox(
            height: 3.h,
          ),
          const OrderedInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          SizedBox(
            height: 3.h,
          ),
          const OrderedInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const SizedBox(
            height: 9,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: Divider(
              thickness: 2,
              color: Color(0xffC7C7C7),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          const TotalPrice(
            title: 'Total',
            value: r'$50.97',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomBottom(
            ontap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetails();
              // }));
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const PaymentMethodBottomSheet();
                  });
            },
            title: 'Complete Payment',
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodListView(),
          const SizedBox(
            height: 32,
          ),
          const CustomBottom(
            title: 'continue',
          ),
        ],
      ),
    );
  }
}
