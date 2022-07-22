import 'package:flutter/material.dart';
import '../widgets/rounded_icon_widget.dart';

class ProfileInfoComponent extends StatelessWidget {
  const ProfileInfoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Experienced Software Engineer with a demonstrated history " +
                "of working in the robotics team and several website " +
                "also mobile application projects.",
            style: TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconWidget(
              icon: Icon(Icons.whatsapp, color: Colors.green),
              color: Colors.black26,
              type: Type.outlined,
            ),
            SizedBox(width: 18),
            RoundedIconWidget(
              icon: Icon(
                Icons.email_outlined,
                color: Colors.deepOrangeAccent,
              ),
              color: Colors.black26,
              type: Type.outlined,
            ),
          ],
        ),
      ],
    );
  }
}
