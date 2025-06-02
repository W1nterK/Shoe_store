import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/shared/ui/cart_card_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 1) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.background,
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
                  onPressed: () => context.go('/home'),
                  icon: Icon(CupertinoIcons.back, size: 20),
                ),
              ),
              Text(
                context.tr('orders'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(width: 40),
            ],
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '3 Товара',

              style: GoogleFonts.roboto(
                fontSize: 15,
                color: BrandColors.text,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: BrandColors.accent,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: _incrementCounter,
                      icon: Icon(Icons.add, size: 40, color: BrandColors.block),
                      style: IconButton.styleFrom(
                        backgroundColor: BrandColors.accent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        '$_counter',
                        style: GoogleFonts.roboto(
                          fontSize: 25,
                          color: BrandColors.block,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: _decrementCounter,
                      icon: Icon(
                        Icons.remove,
                        size: 40,
                        color: BrandColors.block,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: BrandColors.accent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: CartCardScreen(),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: CartCardScreen(),
                ),
              ),
              SizedBox(width: 16),
              SizedBox(
                height: 180,
                width: 80,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.trash,
                    size: 40,
                    color: BrandColors.block,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: BrandColors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  child: CartCardScreen(),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            width: 350,
            height: 50,
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: BrandColors.accent,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              context.tr('checkout'),
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: BrandColors.block,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
