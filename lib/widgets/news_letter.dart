import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class NewsLetter extends StatelessWidget {
  const NewsLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Column(
        crossAxisAlignment:  constraint.maxWidth < kMaxMobileWidth ? CrossAxisAlignment.center :CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
            alignment: Alignment.center,
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
                  height: constraint.maxWidth < kMaxMobileWidth ? 50 : 55,
                  width: constraint.maxWidth < kMaxMobileWidth ? 300 : 320,
                  child: TextField(
                    style: GoogleFonts.outfit(
                        fontSize: 18, letterSpacing: 1.5, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      hintStyle: GoogleFonts.outfit(
                          fontSize: constraint.maxWidth < kMaxMobileWidth
                      ? 15 : 18,
                          letterSpacing: 1.5,
                          color: Colors.white),
                    ),
                  ).center()),
                      Positioned(
                right: -30,
               
                child:     ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.secondary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                 
                  minimumSize: Size(
                 constraint.maxWidth < kMaxMobileWidth ? 120: 140,
                    constraint.maxWidth < kMaxMobileWidth ? 58 : 62,
                  )),
              onPressed: () {
                print('Submit Button Pressed');
              },
              child:    Text(
                        'SUBMIT',
                        style: GoogleFonts.outfit(
                            fontSize:   constraint.maxWidth < kMaxMobileWidth
                      ? 12 :12,
                            letterSpacing: 1.5,
                            color: Colors.white),
                      ).center()),
                
                
                // ElevatedButton(
                //   //  hoverColor: Colors.transparent,
                //   onPressed: () {
                //     print('Submit Button Pressed');
                //   },
                //   child: Container(
                //       height: constraint.maxWidth < kMaxMobileWidth ? 50 : 65,
                //       width: 120,
                //       decoration: const BoxDecoration(
                //         borderRadius: BorderRadius.horizontal(
                //             left: Radius.circular(35),
                //             right: Radius.circular(35)),
                //         color: AppColor.secondary,
                //       ),
                //       child: Text(
                //         'SUBMIT',
                //         style: GoogleFonts.outfit(
                //             fontSize:   constraint.maxWidth < kMaxMobileWidth
                //       ? 12 :18,
                //             letterSpacing: 1.5,
                //             color: Colors.white),
                //       ).center()),
                // ),
              ),
           
            ],
          )
        ],
      );
    });
  }
}
