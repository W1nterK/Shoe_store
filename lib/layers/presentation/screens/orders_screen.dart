import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Center(
            child: Text(
                    context.tr('Soon'),
                    style: GoogleFonts.roboto(
                      fontSize: 30,
                      color: BrandColors.subTextDark,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 30),
              onPressed: () => context.go('/home'),
            ),
          ),
        ],
      ),
    );
  }
}