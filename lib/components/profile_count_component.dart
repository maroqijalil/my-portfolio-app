import 'package:flutter/material.dart';

class ProfileCountComponent extends StatelessWidget {
  final num count;
  final String title;

  const ProfileCountComponent({
    Key? key,
    required this.count,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            count.toString(),
            style: TextStyle(
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
