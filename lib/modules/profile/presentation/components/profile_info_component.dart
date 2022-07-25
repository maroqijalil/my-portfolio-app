import 'package:flutter/material.dart';
import '../widgets/rounded_icon_widget.dart';

class ProfileInfoComponent extends StatefulWidget {
  const ProfileInfoComponent({Key? key}) : super(key: key);

  @override
  State<ProfileInfoComponent> createState() => _ProfileInfoComponentState();
}

class _ProfileInfoComponentState extends State<ProfileInfoComponent> {
  bool detailedDesc = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: InkWell(
            onTap: () {
              setState(() {
                detailedDesc = !detailedDesc;
              });
            },
            child: Text(
              detailedDesc
                  ? "Experienced Software Engineer with a demonstrated history " +
                      "of working in the robotics team and several website " +
                      "also mobile application projects..."
                  : "Experienced Software Engineer with a demonstrated history " +
                      "of working in the robotics team and several website " +
                      "also mobile application projects. Skilled in Programming, " +
                      "Design, and Website also Mobile Development. " +
                      "Strong engineering professional with " +
                      "an Undergraduate Student focused in " +
                      "Informatics Engineering from " +
                      "Institut Teknologi Sepuluh Nopember.",
              style: TextStyle(
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
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
