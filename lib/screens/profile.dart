import 'package:flutter/material.dart';
import 'package:my_portofolio/components/rounded_icon_component.dart';

import '../components/profile_count_component.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool favoriteState = false;
  num favoritedCount = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jalil",
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/imgs/jalil.png"),
                    radius: 65,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Maroqi Jalil",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
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
                    children: <Widget>[
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
                    children: <Widget>[
                      ProfileCountComponent(
                        count: favoritedCount,
                        title: "Favorited",
                      ),
                      RoundedIconComponent(
                        icon: favoriteState
                            ? Icon(Icons.favorite_outlined)
                            : Icon(Icons.favorite_border),
                        color: Colors.black12,
                        type: Type.filled,
                        size: Size.medium,
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
                      ProfileCountComponent(
                        count: 126,
                        title: "Profile Views",
                      )
                    ],
                  ),
                  SizedBox(height: 32),
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
                    children: <Widget>[
                      RoundedIconComponent(
                        icon: Icon(Icons.whatsapp, color: Colors.green),
                        color: Colors.black26,
                        type: Type.outlined,
                      ),
                      SizedBox(width: 18),
                      RoundedIconComponent(
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.deepOrangeAccent,
                        ),
                        color: Colors.black26,
                        type: Type.outlined,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
