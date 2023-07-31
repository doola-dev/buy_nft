import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class NewsLetter extends StatelessWidget {
  const NewsLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Join Our NewsLetter',
          style: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 22,
              // letterSpacing: 0.5,

              fontWeight: FontWeight.w600),
        ),
        40.height,
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 130,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(35), right: Radius.circular(35)),
                  color: AppColor.secondary.withOpacity(0.18),
                ),
                height: 65,
                width: 320,
                child: TextField(
                  style: GoogleFonts.outfit(
                      fontSize: 18, letterSpacing: 1.5, color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email Address',
                    hintStyle: GoogleFonts.outfit(
                        fontSize: 18, letterSpacing: 1.5, color: Colors.white),
                  ),
                ).center()),
            Positioned(
              right: -20,
              child: TextButton(
                //  hoverColor: Colors.transparent,
                onPressed: () {
                  print('Submit Button Pressed');
                },
                child: Container(
                    height: 65,
                    width: 130,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(35),
                          right: Radius.circular(35)),
                      color: AppColor.secondary,
                    ),
                    child: Text(
                      'SUBMIT',
                      style: GoogleFonts.outfit(
                          fontSize: 18,
                          letterSpacing: 1.5,
                          color: Colors.white),
                    ).center()),
              ),
            ),
          ],
        )
      ],
    );
  }
}
