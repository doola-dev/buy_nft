import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsLetter extends StatelessWidget {
  const NewsLetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
                'Join Our NewsLetter',
                style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontSize: 22,
                    // letterSpacing: 0.5,
                  
                    fontWeight: FontWeight.w600),
              ),
      ],
    );
  }
}
