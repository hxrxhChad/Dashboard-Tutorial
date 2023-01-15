// ignore_for_file: unused_import, file_names, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:yorportfolio/main.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/harsh.jpg"),
              radius: 50,
            ),
            Spacer(),
            Text(
              "Harsh Kumar",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                "Flutter Developer & currently learning Data Science",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
