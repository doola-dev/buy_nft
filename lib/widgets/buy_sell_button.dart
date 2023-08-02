import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class BuySellButton extends StatelessWidget {
  const BuySellButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
                height: constraints.maxWidth < kMaxMobileWidth ? 40 : 55,
                width: constraints.maxWidth < kMaxMobileWidth ? 125 : 250,
                decoration: BoxDecoration(
                  color: AppColor.secondary,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Text(
                  'BUY NFTS',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    color: Colors.white,

                    fontSize: constraints.maxWidth < kMaxMobileWidth ? 12 : 16,
                    //  fontWeight: FontWeight.med
                  ),
                ).center()),
          ),
          16.width,
          InkWell(
              onTap: () {},
              child: Container(
                  height: constraints.maxWidth < kMaxMobileWidth ? 40 : 55,
                  width: constraints.maxWidth < kMaxMobileWidth ? 125 : 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColor.lightBlue),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Text(
                    'SELL NFTS',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(
                      color: Colors.white,
                      fontSize:
                          constraints.maxWidth < kMaxMobileWidth ? 12 : 16,
                      //  fontWeight: FontWeight.med
                    ),
                  ).center()))
        ],
      );
    });
  }
}
