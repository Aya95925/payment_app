import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/widget/build_appbar.dart';
import 'package:payment_getway/featured/chechout/presentation/views/widget/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
          offset: Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}
