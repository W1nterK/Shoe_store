import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.block,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: BrandColors.background,
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      ),
                  icon: Icon(CupertinoIcons.back, size: 20,),
                ),
              ),
              Text(
                context.tr('orders'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 40),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Text('3 Товара'),
            ],
          ),
          SizedBox(height: 10,),
          Stack(
            children: [
              Positioned(
                left: 1,
                top: 1,
                child: 
              Container(
                height: 80,
                width: 40,
                color: BrandColors.accent,
              ))
            ],
          )
        ],
      ),
    );
  }
}