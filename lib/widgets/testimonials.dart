import 'package:buy_nft/widgets/constants.dart';
import 'package:buy_nft/widgets/testimonials_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../gen/colors.gen.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            testimonials.length,
            (index) => Stack(
                clipBehavior: Clip.none,
                fit: StackFit.loose,
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      45.height,
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        margin: const EdgeInsets.only(right: 6, left: 6),
                        height: 320,
                        width: 320,
                        decoration: BoxDecoration(
                            color: AppColor.secondary.withOpacity(0.18),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          80.height,
                          Text(
                            testimonials[index].name,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                          30.height,
                          Text(
                            testimonials[index].message,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                height: 1.6,
                                fontSize: 18,
                                fontWeight: FontWeight.normal),
                          ),
                        ]),
                      ),
                      20.width
                    ],
                  ),
                  Positioned(
                    top: 0,
                    child: Stack(
                      children: [
                        ColorFiltered(
                          colorFilter: greyscale,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: AppColor.lightBlue,
                            backgroundImage: AssetImage(
                              testimonials[index].profilePicture,
                            ),
                          ),
                        ),
                        const Opacity(
                          opacity: 0.6,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: AppColor.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
