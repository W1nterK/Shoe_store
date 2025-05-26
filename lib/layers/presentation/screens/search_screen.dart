import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/shared/ui/recent.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.background,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
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
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      ),
                  icon: Icon(CupertinoIcons.back),
                ),
              ),
              Text(
                context.tr('looking_for_shoes'),
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: BrandColors.block,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: context.tr('looking_for_shoes'),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: 13,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(8),
              children: List.generate(5, (index) => Recent()),
            ),
          ),
        ],
      ),
    );
  }
}
