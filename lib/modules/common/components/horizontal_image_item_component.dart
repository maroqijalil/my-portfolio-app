import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalImageItemComponent extends StatelessWidget {
  final String title;
  final String desc;
  final String imageSource;

  const HorizontalImageItemComponent({
    Key? key,
    required this.title,
    required this.desc,
    required this.imageSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double widgetWidth = (screenSize.width < 400) ? 100 : (screenSize.width / 400) * 100;

    return Container(
      width: widgetWidth,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imageSource,
                  width: widgetWidth,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 0,
              child: Text(
                desc,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
