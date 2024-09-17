import 'package:flutter/material.dart';

class customCheckIcon extends StatelessWidget {
  const customCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: CircleAvatar(
        backgroundColor: Color(0xffEDEDED),
        radius: 50,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xff34A853),
          child: Icon(
            Icons.check,
            size: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
