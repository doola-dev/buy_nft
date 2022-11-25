import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:buy_nft/gen/colors.gen.dart';
import 'package:buy_nft/widgets/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
                    children: const [
                      
                 
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
