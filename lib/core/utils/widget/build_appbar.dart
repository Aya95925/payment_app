import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/arrow1.svg',
        height: 22,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title ?? '',
      style: Styles.font25Black500w,
    ),
  );
}
