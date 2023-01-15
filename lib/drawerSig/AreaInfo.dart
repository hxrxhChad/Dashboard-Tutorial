// ignore_for_file: unused_import, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yorportfolio/main.dart';

class AreaInfo extends StatelessWidget {
  const AreaInfo({
    Key? key,
    required this.text,
    this.title,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(text!)
        ],
      ),
    );
  }
}
