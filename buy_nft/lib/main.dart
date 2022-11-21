import 'package:buy_nft/responsive/responsive_layout.dart';
import 'package:buy_nft/responsive/screens/desktop_screen.dart';
import 'package:buy_nft/responsive/screens/mobile_screen.dart';
import 'package:buy_nft/responsive/screens/tablet_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
        desktopScreen:  DesktopScreen(),
        mobileScreen: MobileScreen(),
        tabletScreen: TabletScreen(),
      ),
    );
  }
}
