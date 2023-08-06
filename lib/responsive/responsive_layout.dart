import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;
  const ResponsiveLayout({
    super.key,
    required this.mobileScreen,
    required this.tabletScreen,
    required this.desktopScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < kMaxMobileWidth) {
        return mobileScreen;
      } else if (constraints.maxWidth < kmaxTabWidth) {
        return tabletScreen;
      } else {
        return desktopScreen;
      }
    });
  }
}
