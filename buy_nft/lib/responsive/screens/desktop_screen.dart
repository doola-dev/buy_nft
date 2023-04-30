import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:buy_nft/gen/assets.gen.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:buy_nft/widgets/call_to_action.dart';
import 'package:buy_nft/widgets/constants.dart';
import 'package:buy_nft/widgets/gradients.dart';
import 'package:buy_nft/widgets/testimonials.dart';
import 'package:buy_nft/widgets/testimonials_list.dart';
import 'package:buy_nft/widgets/view_pricing_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../widgets/news_letter.dart';

class DesktopScreen extends HookWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final ScrollController verticalScroll = ScrollController();
    UserTestimonials? usert;

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
                                14.height,
                                Text(
                                    'The most secure marketplace for buying\n and selling unique crypto assests',
                                    style: GoogleFonts.outfit(
                                        // fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1.6,
                                        fontSize: 18)),
                                14.height,
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
                              child: Assets.icons.computer.image(scale: 1.2),
                            ),
                            16.height,

                            // 16.width,
                          ],
                        ),
                        80.height,
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'FEATURED ON',
                              // textAlign: TextAlign.left,
                              style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 16,
                                //  fontWeight: FontWeight.med
                              ),
                            ),
                            16.height,
                            Assets.images.brands.image(scale: 1.5)
                          ],
                        ),
                        85.height,
                        Row(
                          children: [
                            Column(
                              children: [
                                105.height,
                                ConstrainedBox(
                                  constraints: const BoxConstraints(),
                                  child: Assets.icons.list.image(scale: 1.3),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ANALYTICS',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.outfit(
                                    color: AppColor.lightBlue,
                                    fontSize: 20,
                                    //  fontWeight: FontWeight.med
                                  ),
                                ),
                                24.height,
                                Text('Built-In Analytics\nTo Track Your Nfts',
                                    style: GoogleFonts.outfit(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1,
                                        fontSize: 55)),
                                Text(
                                    'Use our built-in analytics dashboard to pull\nvaluable insights and monitor the value of your\nKrypto portfolio over time.',
                                    style: GoogleFonts.outfit(

                                        // fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1.6,
                                        fontSize: 18)),
                              ],
                            ),
                          ],
                        ),
                        85.height,
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ANALYTICS',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.outfit(
                                    color: AppColor.lightBlue,
                                    fontSize: 20,
                                    //  fontWeight: FontWeight.med
                                  ),
                                ),
                                24.height,
                                Text('Built-In Analytics\nTo Track Your Nfts',
                                    style: GoogleFonts.outfit(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1,
                                        fontSize: 55)),
                                Text(
                                    'Use our built-in analytics dashboard to pull\nvaluable insights and monitor the value of your\nKrypto portfolio over time.',
                                    style: GoogleFonts.outfit(

                                        // fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        height: 1.6,
                                        fontSize: 18)),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                85.height,
                                ConstrainedBox(
                                  constraints: const BoxConstraints(),
                                  child: Assets.icons.task.image(scale: 1.3),
                                ),
                              ],
                            ),
                          ],
                        ),
                        150.height,
                        Column(
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
                            Text('Read What Others\n Have To Say',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.outfit(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    height: 1,
                                    fontSize: 55)),
                            85.height,
                            const Testimonials(),
                            50.height,
                            const ViewPricing(),
                            50.height,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Krypto',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.outfit(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                                100.width,
                                const CallToAction(),
                                80.width,
                                const NewsLetter()
                              ],
                            )
                          ],
                        ),
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
