import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class ViewPricing extends StatelessWidget {
  const ViewPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        height: constraint.maxWidth < kMaxMobileWidth ? 300 : 380,
        width: constraint.maxWidth < kMaxMobileWidth ? 450 : 1000,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              stops: [0.2, 1],
              end: Alignment.centerRight,
              colors: [AppColor.secondary, AppColor.lightBlue]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ARE YOU READY',
              style: GoogleFonts.outfit(
                  color: AppColor.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            45.height,
            Text('Be A Part Of The\nNext Big Thing',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1,
                    fontSize: constraint.maxWidth < kMaxMobileWidth ? 35 : 55)),
            45.height,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: constraint.maxWidth < kMaxMobileWidth
                      ? const EdgeInsets.symmetric(vertical: 22, horizontal: 50)
                      : const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                ),
                onPressed: () {},
                child: Text(
                  'VIEW OUR PRICING',
                  style: GoogleFonts.outfit(
                      color: Colors.white,
                      fontSize: constraint.maxWidth < kMaxMobileWidth ? 15 : 22,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w400),
                )),
          ],
        ),
      ).center();
    });
  }
}
