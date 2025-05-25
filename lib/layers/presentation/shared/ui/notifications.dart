import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 400,
          height: 180,
          padding: EdgeInsets.only(top: 12, left: 8, bottom: 12, right: 6),
          decoration: BoxDecoration(
            color: BrandColors.block,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 12),
        ),
        Positioned(
          left: 10,
          top: 10,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            child: Text(
              'Lorem Ipsum',
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: BrandColors.text,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 40,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            ),
          ),
        ),
        Positioned(
          left: 10,
          top: 150,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            child: Text(
              '21.03.2025 15:43',
              style: GoogleFonts.roboto(
                fontSize: 10,
                color: BrandColors.subTextDark,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
