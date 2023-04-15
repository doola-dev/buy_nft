import 'package:buy_nft/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class ViewPricing extends StatelessWidget {
  const ViewPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 1000,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
              stops: [0.2, 1],
              
              end:Alignment.centerRight,
              
              colors: [AppColor.secondary, AppColor.lightBlue])),
    );
  }
}
