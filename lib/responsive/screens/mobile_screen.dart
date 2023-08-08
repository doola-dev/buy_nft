import 'package:buy_nft/gen/assets.gen.dart';
import 'package:buy_nft/widgets/analytics_text_widget.dart';
import 'package:buy_nft/widgets/buy_sell_button.dart';
import 'package:buy_nft/widgets/call_to_action.dart';
import 'package:buy_nft/widgets/gradients.dart';
import 'package:buy_nft/widgets/home_navigation.dart';
import 'package:buy_nft/widgets/home_title.dart';
import 'package:buy_nft/widgets/news_letter.dart';
import 'package:buy_nft/widgets/testimonals_title_widget.dart';
import 'package:buy_nft/widgets/testimonials.dart';
import 'package:buy_nft/widgets/view_pricing_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../gen/colors.gen.dart';

final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

class MobileScreen extends HookWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final ScrollController verticalScroll = ScrollController();
    return Scaffold(
      key: _globalKey,
      backgroundColor: AppColor.primary,
      endDrawer: Drawer(
        width: 250,
        backgroundColor: AppColor.primary,
        child: ListView(
          children: [
            const SizedBox(
              height: 45,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 40,
                ).onTap(
                  () {
                    _globalKey.currentState!.closeEndDrawer();
                  },
                )).paddingRight(45),
            const HomeNavigation()
          ],
        ),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: ListView(
          controller: verticalScroll,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(top: -450, left: -300, child: gradientTop),
                Positioned(left: 200, child: gradientRight),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    50.height,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('KYPTO',
                              style: GoogleFonts.outfit(
                                  color: Colors.white, fontSize: 22)),

                          const Icon(
                            Icons.menu,
                            size: 40,
                            color: Colors.white,
                          ).onTap(
                            () {
                              _globalKey.currentState!.openEndDrawer();
                            },
                          ),
                          // navigationBar
                        ]),
                    50.height,
                    const HomeTitle(),
                    14.height,
                    const BuySellButton(),
                    ConstrainedBox(
                      constraints: const BoxConstraints(),
                      child: Assets.icons.computer.image(scale: 1),
                    ),
                    30.height,
                    Text('FEATURED ON',
                        // textAlign: TextAlign.left,
                        style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 16,
                          //  fontWeight: FontWeight.med
                        )).center(),
                    14.height,
                    Assets.images.brands.image(scale: 1.5),
                    50.height,
                    const Analytics(),
                    ConstrainedBox(
                      constraints: const BoxConstraints(),
                      child: Assets.icons.list.image(scale: 1.2),
                    ).center(),
                    14.height,
                    const Analytics(),
                    ConstrainedBox(
                      constraints: const BoxConstraints(),
                      child: Assets.icons.task.image(scale: 1.3),
                    ).center(),
                    14.height,
                    const TestimonialText(),
                    85.height,
                    const Testimonials(),
                    40.height,
                    const ViewPricing(),
                    40.height,
                    const CallToAction(),
                    40.height,
                    const NewsLetter().center(),
                    40.height,
                  ],
                ).paddingSymmetric(horizontal: 20)
              ],
            )
          ],
        ),
      ),
    );
  }
}
