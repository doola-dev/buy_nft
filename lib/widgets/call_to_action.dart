import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       
          
          children: [
            Text(
              '  Krypto',
              style: GoogleFonts.outfit(
                  color: Colors.white,
                  height: 1.6,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            14.height,
            TextButton(
              onPressed: () {}, 
              child: Text(
                'Home',
               
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'About',
               
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Buy NFTs',
              
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Sell NFTs',
             
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
       50.width,
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '  Market',
              style: GoogleFonts.outfit(
                  color: Colors.white,
                  height: 1.6,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Browse NFTs',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Buy NFTs',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Sell NFTs',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        50.width,
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '  Contact',
              style: GoogleFonts.outfit(
                  color: Colors.white,
                  height: 1.6,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Email',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Linkedln',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Instagram',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
            6.height,
            TextButton(
              onPressed: () {},
              child: Text(
                'Twitter',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    height: 1.6,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
