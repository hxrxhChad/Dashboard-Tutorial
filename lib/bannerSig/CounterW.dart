// ignore_for_file: file_names, unused_import, prefer_const_constructors, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:yorportfolio/main.dart';

class CounterW extends StatelessWidget {
  const CounterW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Counters(
          label: 'Projects',
          value: 100,
        ),
        Counters(
          label: 'Likes',
          value: 69,
        ),
        Counters(
          label: '+ve Remarks',
          value: 200,
        ),
      ],
    );
  }
}

class Counters extends StatelessWidget {
  const Counters({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);
  final int value;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: value),
          duration: defaultDuration,
          builder: (context, value, child) => Text(
            "$value",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor),
          ),
        ),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2!,
        )
      ],
    );
  }
}
