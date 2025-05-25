import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
      height: 60,
      width: 80,
      decoration: BoxDecoration(
        color: (CupertinoColors.extraLightBackgroundGray),
      ),
      child: Text(
        'TEXT',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: CupertinoColors.black,
        ),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.only(right: 20),
      alignment: Alignment.center,
    );
  }
}
