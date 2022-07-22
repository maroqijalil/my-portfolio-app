import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool favoriteState = false;

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
                SizedBox(
                  height: 12,
                ),
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
                    const FavoriteInfoComponent(
                      count: 200,
                      title: "Favorited",
                    ),
                    Container(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            favoriteState = !favoriteState;
                          });
                        },
                        icon: favoriteState
                            ? Icon(Icons.favorite_outlined)
                            : Icon(Icons.favorite_border),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black12),
                    ),
                    const FavoriteInfoComponent(
                      count: 126,
                      title: "Profile Views",
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

class FavoriteInfoComponent extends StatelessWidget {
  const FavoriteInfoComponent(
      {Key? key, required this.count, required this.title})
      : super(key: key);

  final num count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            count.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(title),
        ],
      ),
    );
  }
}
