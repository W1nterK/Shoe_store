import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.access_time),
          SizedBox(width: 10,),
          Text('Recent',style: GoogleFonts.roboto(
                  fontSize: 13,
                  color: BrandColors.text,
                ),  ),
        ],
      )
    );
  }
}