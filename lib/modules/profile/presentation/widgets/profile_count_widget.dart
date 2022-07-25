import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCountWidget extends StatelessWidget {
  final num count;
  final String title;

  const ProfileCountWidget({
    Key? key,
    required this.count,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            count.toString(),
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.blue,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
