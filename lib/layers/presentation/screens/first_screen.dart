import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.accent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(
            context.tr('wellcome'),
            style: GoogleFonts.roboto(
              fontSize: 40,
              color: BrandColors.block,
              fontWeight: FontWeight.w700,
             decoration: TextDecoration.none
            ),
          ),
          SizedBox(height: 80),
          Stack(
            children: [
              Positioned(
                child: Image.asset('assets/image_1.png', fit: BoxFit.contain),
              ),
            ],
          ),

          SizedBox(height: 250),
          GestureDetector(
            onTap: () => context.push('/second'),
            child: Container(
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: BrandColors.block,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                context.tr('start'),
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
