// ignore_for_file: file_names, unused_import, prefer_const_constructors, duplicate_ignore, deprecated_member_use

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:yorportfolio/main.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Knowl(
          label: 'Front-End Development',
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Knowl(
          label: 'Version Control, Github, Git',
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        // ignore: prefer_const_constructors
        Knowl(
          label: 'Machine Learning & Python Core',
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Knowl(
          label: 'Data Science Fundamentals',
        ),
      ],
    );
  }
}

class Knowl extends StatelessWidget {
  const Knowl({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ignore: prefer_const_constructors
        Icon(
          AntIcons.checkCircleFilled,
          color: primaryColor,
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(label)
      ],
    );
  }
}
