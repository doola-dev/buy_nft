import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:buy_nft/widgets/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class DesktopScreen extends HookWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final ScrollController verticalScroll = ScrollController();

    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SizedBox(
        height: height,
        width: width,
        child: AdaptiveScrollbar(
          controller: verticalScroll,
          child: ListView(
            controller: verticalScroll,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  gradientTop,
                  gradientRight,
                  Column(
                    children: [
                      80.height,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text('KYPTO', style: GoogleFonts.outfit( color: Colors.white, fontSize: 20  )),
                              Row(
                                children: [
                                  Text('about', style: GoogleFonts.outfit( color: Colors.white, fontSize: 17  )),
                                 75.width,
                                    Text('pricing', style: GoogleFonts.outfit( color: Colors.white, fontSize: 17 )),
                                       75.width,
                                      Text('contacts', style: GoogleFonts.outfit( color: Colors.white, fontSize: 17 )),
                                         75.width,
                                        Text('buy nft', style: GoogleFonts.outfit( color: Colors.white, fontSize: 17 )),
                                ],
                              ),
                           
                          ])
                    ],
                  ).paddingSymmetric(horizontal: 250)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
