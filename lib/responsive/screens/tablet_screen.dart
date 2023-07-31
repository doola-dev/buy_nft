import 'package:buy_nft/gen/colors.gen.dart';
import 'package:buy_nft/widgets/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class TabletScreen extends HookWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
   double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: AppColor.primary,
      // drawer: Drawer(
      //   child: ListView(),
      // ),
      body: SizedBox(
        height: height,
        width: width,
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
             
               left:400   ,   child: gradientTop),
                Positioned(
                  top: 400,
                  child: gradientRight),
                Column()
              ],
            )
          ],
        ),
      ),
    );
  }
}