import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/rounded_icon_widget.dart';
import '../widgets/profile_count_widget.dart';

class ProfileHeaderComponent extends StatefulWidget {
  const ProfileHeaderComponent({Key? key}) : super(key: key);

  @override
  State<ProfileHeaderComponent> createState() => _ProfileHeaderComponentState();
}

class _ProfileHeaderComponentState extends State<ProfileHeaderComponent> {
  bool favoriteState = false;
  num favoritedCount = 200;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32, bottom: 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
          bottomRight: Radius.circular(80),
        ),
        image: DecorationImage(
          image: AssetImage("assets/imgs/fira/2.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.dstIn),
        ),
      ),
      child: Column(
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/imgs/jalil.png"),
                radius: 65,
              ),
              SizedBox(height: 12),
              Text(
                "Maroqi Jalil",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Software Engineer",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.black54,
                    size: 16,
                  ),
                  Text(
                    "Surabaya",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileCountWidget(
                    count: favoritedCount,
                    title: "Favorited",
                  ),
                  RoundedIconWidget(
                    icon: favoriteState
                        ? Icon(Icons.favorite_outlined)
                        : Icon(Icons.favorite_border),
                    color: Colors.black12,
                    type: RoundedIconType.filled,
                    size: RoundedIconSize.medium,
                    onPressed: () {
                      setState(() {
                        favoriteState = !favoriteState;

                        if (favoriteState) {
                          favoritedCount = favoritedCount + 1;
                        } else {
                          favoritedCount = 200;
                        }
                      });
                    },
                  ),
                  ProfileCountWidget(
                    count: 126,
                    title: "Profile Views",
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
