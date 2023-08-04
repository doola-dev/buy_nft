import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: constraint.maxWidth < kMaxMobileWidth
                ? Alignment.center
                : Alignment.centerLeft,
            child: Text(
              'ANALYTICS',
              textAlign: TextAlign.left,
              style: GoogleFonts.outfit(
                color: AppColor.lightBlue,
                fontSize: 20,
                //  fontWeight: FontWeight.med
              ),
            ),
          ),
          24.height,
          Align(
            alignment: constraint.maxWidth < kMaxMobileWidth
                ? Alignment.center
                : Alignment.centerLeft,
            child: Text('Built-In Analytics\nTo Track Your Nfts',
                style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1,
                    fontSize: constraint.maxWidth < kMaxMobileWidth ? 35 : 55)),
          ),
          14.height,
         Align(
            alignment: constraint.maxWidth < kMaxMobileWidth ? Alignment.center  :  Alignment.centerLeft,
            child: Text(
                'Use our built-in analytics dashboard to pull valuable insights and monitor the value of your Krypto portfolio over time.',
                textAlign: constraint.maxWidth < kMaxMobileWidth
                    ? TextAlign.center
                    : TextAlign.left,
                style: GoogleFonts.outfit(
          
                    // fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18)),
          ),

        ],
      );
    });
  }
}
