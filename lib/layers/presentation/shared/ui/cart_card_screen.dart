import 'package:flutter/material.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCardScreen extends StatelessWidget {
  const CartCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: BrandColors.block,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: BrandColors.background,
                 borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/nike_zoom.png', fit: BoxFit.contain),
            )
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nike Club Max',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: BrandColors.text,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Р752.00',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    color: BrandColors.text,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}