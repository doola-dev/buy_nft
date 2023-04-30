import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class ViewPricing extends StatelessWidget {
  const ViewPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: 1000,
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
                  fontSize: 55)),
          45.height,
         InkWell(
          hoverColor: Colors.amber,
             onTap: () {},

            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.black),
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              child: Text(
                'VIEW OUR PRICING',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 22,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w400),
                 
              ),
            ),
          )
        ],
      ),
    );
  }
}
