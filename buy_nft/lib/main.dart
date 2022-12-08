import 'package:buy_nft/gen/colors.gen.dart';
import 'package:buy_nft/responsive/responsive_layout.dart';
import 'package:buy_nft/responsive/screens/desktop_screen.dart';
import 'package:buy_nft/responsive/screens/mobile_screen.dart';
import 'package:buy_nft/responsive/screens/tablet_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColor.primary,
        textTheme: GoogleFonts.outfitTextTheme(
        TextTheme(
              //caption: boldTextStyle(size: 14, height: 1.70),
             // headline5: boldTextStyle(size: 28, height: 1.30),
             // headline3: boldTextStyle(

              displayLarge: boldTextStyle( size: 100, )
              
              ),

        )
      ),
      home: const ResponsiveLayout(
        desktopScreen:  DesktopScreen(),
        mobileScreen: MobileScreen(),
        tabletScreen: TabletScreen(),
    
      ),
    );
  }
}
      