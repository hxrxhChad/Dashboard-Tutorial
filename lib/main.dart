// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:yorportfolio/bannerSig/BannerSigment.dart';
import 'package:yorportfolio/drawerSig/DrawerSigment.dart';

const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portfolio",
      home: BannerSigment(),
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(color: bodyTextColor),
              bodyText2: TextStyle(color: bodyTextColor),
            ),
      ),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: DrawerSigment()),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
