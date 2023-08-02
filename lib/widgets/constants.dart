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



var discoverNftWidget = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Discover\nAnd Collect\nRare NFTs',
        style: GoogleFonts.outfit(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            height: 1,
            fontSize: 80)),
    14.height,
    Text(
        'The most secure marketplace for buying\n and selling unique crypto assests',
        style: GoogleFonts.outfit(
            // fontWeight: FontWeight.w600,
            color: Colors.white,
            height: 1.6,
            fontSize: 18)),
    14.height,
    Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              height: 55,
              width: 250,
              decoration: BoxDecoration(
                color: AppColor.secondary,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Text(
                'BUY NFTS',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  color: Colors.white,

                  fontSize: 16,
                  //  fontWeight: FontWeight.med
                ),
              ).center()),
        ),
        16.width,
        InkWell(
            onTap: () {},
            child: Container(
                height: 55,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColor.lightBlue),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Text(
                  'SELL NFTS',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 16,
                    //  fontWeight: FontWeight.med
                  ),
                ).center()))
      ],
    )
  ],
);
