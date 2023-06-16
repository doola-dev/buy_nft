import 'package:buy_nft/widgets/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../gen/colors.gen.dart';

class MobileScreen extends HookWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final ScrollController verticalScroll = ScrollController();
    return Scaffold(
      backgroundColor: AppColor.primary,
      // drawer: Drawer(
      //   child: ListView(),
      // ),
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
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('KYPTO',
                              style: GoogleFonts.outfit(
                                  color: Colors.white, fontSize: 20)),
                          // navigationBar
                        ]),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
