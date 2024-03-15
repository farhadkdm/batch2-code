import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  CustomText({super.key, required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        textAlign: TextAlign.left,
        style: GoogleFonts.ubuntu(
          color: Colors.red,
          fontSize: 40,
          fontWeight: FontWeight.w900,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        );
  }
}