import 'package:buy_nft/gen/colors.gen.dart';

import 'package:flutter/material.dart';


var gradientTop = Container(
  height: 800,
  width: 800,
  decoration: BoxDecoration(

      // shape: BoxShape.circle,

      gradient: RadialGradient(
          tileMode: TileMode.decal,
          radius: 0.6,
          colors: [
        AppColor.secondary.withOpacity(0.65),
        Colors.transparent
      ])),
);
var gradientRight = Container(
  height: 1200,
  width: 1200,
  decoration: BoxDecoration(
      gradient:
          RadialGradient(tileMode: TileMode.decal, radius: 0.5, colors: [
    AppColor.lightBlue.withOpacity(0.65),
    Colors.transparent,
  ])),
);
