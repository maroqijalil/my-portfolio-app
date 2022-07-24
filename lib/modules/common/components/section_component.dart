import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionComponent extends StatelessWidget {
  final String title;
  final Widget child;

  const SectionComponent({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 6),
          child,
        ],
      ),
    );
  }
}
