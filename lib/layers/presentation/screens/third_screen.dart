import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.accent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Stack(
            children: [
              Positioned(
                child: Image.asset('assets/image_3.png', fit: BoxFit.contain),
              ),
            ],
          ),
          SizedBox(height: 120),
          Container(
            width: 280,
            child: Text(
            context.tr('have_power'),
            style: GoogleFonts.roboto(
              fontSize: 35,
              color: BrandColors.block,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          
          ),
          SizedBox(height: 15),
          Container(
            width: 280,
            child: Text(
              context.tr('beautiful_attractive'),
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: BrandColors.subTextLight,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 160),
          GestureDetector(
            onTap: () => context.push('/signin'),
            child: Container(
              width: 350,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: BrandColors.block,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                context.tr('next'),
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w700,
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
