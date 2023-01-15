// ignore_for_file: file_names, unused_import, prefer_interpolation_to_compose_strings, prefer_const_constructors, duplicate_ignore, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:yorportfolio/main.dart';



class Languages extends StatelessWidget {
  const Languages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Languages",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        LinearProgBar(
          percentage: 0.98,
          title: 'Dart',
        ),
        LinearProgBar(
          percentage: 1.00,
          title: 'C-Core',
        ),
        LinearProgBar(
          percentage: 0.98,
          title: 'Java',
        ),
        LinearProgBar(
          percentage: 0.65,
          title: 'Python',
        )
      ],
    );
  }
}

class LinearProgBar extends StatelessWidget {
  const LinearProgBar({
    Key? key,
    required this.percentage,
    required this.title,
  }) : super(key: key);

  final double percentage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            )
          ],
        ),
      ),
    );
  }
}
