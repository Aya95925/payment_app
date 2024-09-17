import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_getway/core/utils/widget/custom_bottom.dart';
import 'package:payment_getway/featured/chechout/presentation/views/thank_you_view.dart';

import 'custom_credit_card.dart';
import 'payment_method_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 32.h,
          ),
        ),
        SliverToBoxAdapter(
          child: PaymentMethodListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 32.h,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12.h, left: 16.w, right: 16.w),
              child: CustomBottom(
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    return formKey.currentState!.save();
                  } else {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ThankYouView();
                    }));
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                title: 'pay',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
