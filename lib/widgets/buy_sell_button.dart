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
             ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.secondary,
                  shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.circular(45)),
                  // side: const BorderSide(width: 1, color: AppColor.secondary),
                  minimumSize: Size(
                    constraints.maxWidth < kMaxMobileWidth ? 125 : 250,
                    constraints.maxWidth < kMaxMobileWidth ? 50 : 65,
                  )),
              onPressed: () {},
              child: Text(
                'SELL NFTS',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  color: Colors.white,
                  fontSize: constraints.maxWidth < kMaxMobileWidth ? 12 : 16,
                  //  fontWeight: FontWeight.med
                ),
              ).center()),
          16.width,
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45)),
                  side: const BorderSide(width: 1, color: AppColor.lightBlue),
                  minimumSize: Size(
                    constraints.maxWidth < kMaxMobileWidth ? 125 : 250,
                    constraints.maxWidth < kMaxMobileWidth ? 50 : 65,
                  )),
              onPressed: () {},
              child: Text(
                'SELL NFTS',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  color: Colors.white,
                  fontSize: constraints.maxWidth < kMaxMobileWidth ? 12 : 16,
                  //  fontWeight: FontWeight.med
                ),
              ).center())
        ],
      );
    });
  }
}
