import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

class cardInfoWidget extends StatelessWidget {
  const cardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 22,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/mastar_card.svg',
          ),
          const SizedBox(
            width: 22,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Credit Card\n',
                  style: Styles.font18Black400w,
                ),
                TextSpan(
                  text: 'Mastercard **78',
                  style: Styles.font16Black400w,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


