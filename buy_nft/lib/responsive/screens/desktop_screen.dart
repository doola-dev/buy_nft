import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:buy_nft/gen/assets.gen.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:buy_nft/widgets/constants.dart';
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
                            children: [
                              Text('KYPTO',
                                  style: GoogleFonts.outfit(
                                      color: Colors.white, fontSize: 20)),
                              navigationBar
                            ]),
                        180.height,
                        Row(
                          // mainAxisSize: MainAxisSize.,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Discover\nAnd Collect\nRare NFTs',
                                    style: GoogleFonts.outfit(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1,
                                        fontSize: 80)),
                                22.height,
                                Text(
                                    'The most secure marketplace for buying\n and selling unique crypto assests',
                                    style: GoogleFonts.outfit(
                                        // fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1,
                                        fontSize: 18)),
                                22.height,
                                Row(
                                  children: [
                                    Container(
                                        height: 55,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          color: AppColor.secondary,
                                          borderRadius:
                                              BorderRadius.circular(45),
                                        ),
                                        child: Text(
                                          'BUY NFTS',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.outfit(
                                            color: Colors.white,

                                            fontSize: 16,
                                            //  fontWeight: FontWeight.med
                                          ),
                                        ).center()),
                                    16.width,
                                    Container(
                                        height: 55,
                                        width: 250,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: AppColor.lightBlue),
                                          borderRadius:
                                              BorderRadius.circular(45),
                                        ),
                                        child: Text(
                                          'SELL NFTS',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.outfit(
                                            color: Colors.white,
                                            fontSize: 16,
                                            //  fontWeight: FontWeight.med
                                          ),
                                        ).center())
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            ConstrainedBox(
                              constraints: const BoxConstraints(),
                              child: Assets.icons.computer.image(
                                scale: 1.2
                               
                              
                                
                              ),
                            ),
                            16.height,

                            // 16.width,
                          ],
                        ),
                        80.height,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'FEUTURED ON',
                              // textAlign: TextAlign.left,

                              style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 16,
                                //  fontWeight: FontWeight.med
                              ),
                            ),
                            16.height,
                            Assets.images.brands.image()
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 100)
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
