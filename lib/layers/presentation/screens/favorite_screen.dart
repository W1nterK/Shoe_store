import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
                  color: BrandColors.block,
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () => context.go('/home'),
                  icon: Icon(CupertinoIcons.back, size: 20),
                ),
              ),
              Text(
                context.tr('favorite'),
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: BrandColors.block,
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.heart, size: 20),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(6),
              children: List.generate(16, (index) => CardScreen()),
            ),
          ),
        ],
      ),
    );
  }
}