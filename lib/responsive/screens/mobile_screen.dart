import 'package:buy_nft/widgets/constants.dart';
import 'package:buy_nft/widgets/gradients.dart';
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
        backgroundColor: Colors.transparent,
        child: ListView(
          children: [
            const SizedBox(
              height: 90,
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
            verticalNavigationBar
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
                            size: 50,
                            color: Colors.white,
                          ).onTap(
                            () {
                              _globalKey.currentState!.openEndDrawer();
                            },
                          )

                          // navigationBar
                        ]),
                  ],
                ).paddingSymmetric(horizontal: 50)
              ],
            )
          ],
        ),
      ),
    );
  }
}
