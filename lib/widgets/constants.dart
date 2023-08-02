import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

var navigationBar = Row(
  children: [
    ElevatedButton(
        onPressed: () {},
        
        child: Text('about',
            style: GoogleFonts.outfit(color: Colors.white, fontSize: 17))),
    75.width,
   ElevatedButton( onPressed:(){}, 
      child: Text('pricing',
          style: GoogleFonts.outfit(color: Colors.white, fontSize: 17)),
    ),
    75.width,
   ElevatedButton( onPressed:(){}, 
      child: Text('contacts',
          style: GoogleFonts.outfit(color: Colors.white, fontSize: 17)),
    ),
    75.width,
   ElevatedButton( onPressed:(){}, child: Text('buy nft',
          style: GoogleFonts.outfit(color: Colors.white, fontSize: 17)),
    ),
  ],
);
var verticalNavigationBar = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    ElevatedButton( onPressed:(){}, child: Text('About', style: GoogleFonts.outfit(color: Colors.white, fontSize: 20))),
    75.height,
   ElevatedButton( onPressed:(){}, child: Text('Pricing',
          style: GoogleFonts.outfit(color: Colors.white, fontSize: 20)),
    ),
    75.height,
   ElevatedButton( onPressed:(){}, child: Text('Contacts',
          style: GoogleFonts.outfit(color: Colors.white, fontSize: 20)),
    ),
    75.height,
   ElevatedButton( onPressed:(){}, child: Text('Buy nft',
          style: GoogleFonts.outfit(color: Colors.white, fontSize: 20)),
    ),
  ],
).paddingSymmetric(vertical: 40, horizontal: 20);
