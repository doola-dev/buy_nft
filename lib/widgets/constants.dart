import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

var navigationBar = Row(
  children: [
    Text('about', style: GoogleFonts.outfit(color: Colors.white, fontSize: 17)),
    75.width,
    Text('pricing',
        style: GoogleFonts.outfit(color: Colors.white, fontSize: 17)),
    75.width,
    Text('contacts',
        style: GoogleFonts.outfit(color: Colors.white, fontSize: 17)),
    75.width,
    Text('buy nft',
        style: GoogleFonts.outfit(color: Colors.white, fontSize: 17)),
  ],
);
var verticalNavigationBar = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('About', style: GoogleFonts.outfit(color: Colors.white, fontSize: 20)),
    75.height,
    Text('Pricing',
        style: GoogleFonts.outfit(color: Colors.white, fontSize: 20)),
    75.height,
    Text('Contacts',
        style: GoogleFonts.outfit(color: Colors.white, fontSize: 20)),
    75.height,
    Text('Buy nft',
        style: GoogleFonts.outfit(color: Colors.white, fontSize: 20)),
  ],
).paddingSymmetric(vertical: 40, horizontal: 20);
