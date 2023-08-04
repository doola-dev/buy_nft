import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class TestimonialText extends StatelessWidget {
  const TestimonialText({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Column(
        children: [
          Text(
            'TESTIMONIALS',
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              color: AppColor.lightBlue,
              fontSize: 20,
              //  fontWeight: FontWeight.med
            ),
          ),
          25.height,
          Align(
            alignment: Alignment.center,
            child: Text('Read What Others\n Have To Say',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1,
                    fontSize: constraint.maxWidth < kMaxMobileWidth ? 30 : 55)),
          ),
        ],
      );
    });
  }
}
