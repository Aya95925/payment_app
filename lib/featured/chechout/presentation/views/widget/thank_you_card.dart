import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:payment_getway/core/utils/styles.dart';
import 'package:payment_getway/featured/chechout/presentation/views/widget/total_price.dart';

import 'card_info_widget.dart';
import 'payment_item_info.dart';

class thankYouCard extends StatelessWidget {
  const thankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffEDEDED),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 14, right: 14),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: Styles.font25Black500w,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.font20Black400w,
            ),
            const SizedBox(height: 40),
            const paymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const SizedBox(height: 20),
            const paymentItemInfo(
              title: 'Time',
              value: '10:15 Am',
            ),
            const SizedBox(height: 20),
            const paymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              height: 60,
              thickness: 2,
              color: Color(0xffC7C7C7),
            ),
            const TotalPrice(
              title: 'Total',
              value: r'$50.97',
            ),
            const SizedBox(
              height: 30,
            ),
            const cardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.5.h,
                          color: const Color(
                            0xff34A853,
                          )),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      style: Styles.font24Black600w.copyWith(
                          color: const Color(
                        0xff34A853,
                      )),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
                height:
                    ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29)
          ],
        ),
      ),
    );
  }
}
