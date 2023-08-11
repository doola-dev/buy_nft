import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Discover\nAnd Collect\nRare NFTs',
              style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1,
                  fontSize: constraint.maxWidth < kMaxMobileWidth
                      ? 45
                      : constraint.maxWidth < kmaxTabWidth
                          ? 65
                          : 80)),
          14.height,
          Text(
               constraint.maxWidth < kMaxMobileWidth ? 'The most secure marketplace for buying and selling unique crypto assests' : 'The most secure marketplace for buying\n and selling unique crypto assests' ,
              style: GoogleFonts.outfit(
                  // fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.6,
                  fontSize: 18)),
        ],
      );
    });
  }
}
