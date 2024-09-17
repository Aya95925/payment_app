import 'package:flutter/material.dart';

import '../../../../core/utils/widget/build_appbar.dart';
import 'my_card_view.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
      body:const MyCardView(),
    );
  }

}
