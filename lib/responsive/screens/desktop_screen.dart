import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:buy_nft/gen/assets.gen.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:buy_nft/widgets/analytics_text_widget.dart';
import 'package:buy_nft/widgets/buy_sell_button.dart';
import 'package:buy_nft/widgets/call_to_action.dart';
import 'package:buy_nft/widgets/constants.dart';
import 'package:buy_nft/widgets/gradients.dart';
import 'package:buy_nft/widgets/home_title.dart';
import 'package:buy_nft/widgets/testimonals_title_widget.dart';
import 'package:buy_nft/widgets/testimonials.dart';
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
                    Positioned(top: -450, left: 100, child: gradientTop),
                    Positioned(right: -600, top: 150, child: gradientRight),
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
                                const HomeTitle(),
                                14.height,
                                const BuySellButton(),
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
                            const Analytics(),
                          ],
                        ),
                        85.height,
                        Row(
                          children: [
                            const Analytics(),
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
                            const TestimonialText(),
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
