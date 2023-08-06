import 'package:buy_nft/constants/screen_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return constraint.maxWidth < kMaxMobileWidth
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('About',
                        style: GoogleFonts.outfit(
                            color: Colors.white, fontSize: 20))),
                30.height,
                TextButton(
                  onPressed: () {},
                  child: Text('Pricing',
                      style: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 20)),
                ),
                30.height,
                TextButton(
                  onPressed: () {},
                  child: Text('Contacts',
                      style: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 20)),
                ),
                30.height,
                TextButton(
                  onPressed: () {},
                  child: Text('Buy nft',
                      style: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 20)),
                ),
              ],
            ).paddingSymmetric(vertical: 40, horizontal: 20)
          : Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('about',
                        style: GoogleFonts.outfit(
                            color: Colors.white, fontSize: 17))),
                75.width,
                TextButton(
                  onPressed: () {},
                  child: Text('pricing',
                      style: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 17)),
                ),
                75.width,
                TextButton(
                  onPressed: () {},
                  child: Text('contacts',
                      style: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 17)),
                ),
                75.width,
                TextButton(
                  onPressed: () {},
                  child: Text('buy nft',
                      style: GoogleFonts.outfit(
                          color: Colors.white, fontSize: 17)),
                ),
              ],
            );
    });
  }
}
