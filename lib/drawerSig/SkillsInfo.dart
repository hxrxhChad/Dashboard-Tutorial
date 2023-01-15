// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unused_import., file_names, unused_import, prefer_interpolation_to_compose_strings, deprecated_member_use, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:yorportfolio/main.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Expanded(
              // ignore: prefer_const_constructors
              child: SkillMeter(
                label: 'Web Dev',
                percentage: 0.98,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: defaultPadding,
            ),
            // ignore: prefer_const_constructors
            Expanded(
              // ignore: prefer_const_constructors
              child: SkillMeter(
                label: 'Machine Learning',
                percentage: 0.65,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: defaultPadding,
            ),
            // ignore: prefer_const_constructors
            Expanded(
              // ignore: prefer_const_constructors
              child: SkillMeter(
                // label: 'Flutter',
                percentage: 0.9, label: 'Flutter Dev',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SkillMeter extends StatelessWidget {
  const SkillMeter({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
