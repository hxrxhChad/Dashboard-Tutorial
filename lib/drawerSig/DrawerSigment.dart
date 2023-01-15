// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_interpolation_to_compose_strings
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, deprecated_member_use, unused_import, unused_local_variable

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';

import 'package:yorportfolio/drawerSig/AreaInfo.dart';
import 'package:yorportfolio/drawerSig/KnowledgeInfo.dart';
import 'package:yorportfolio/drawerSig/LanguageInfo.dart';
import 'package:yorportfolio/drawerSig/MyInfo.dart';
import 'package:yorportfolio/drawerSig/SkillsInfo.dart';
import 'package:yorportfolio/main.dart';

class DrawerSigment extends StatelessWidget {
  const DrawerSigment({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        MyInfo(),
        Expanded(
            child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              AreaInfo(
                title: "Country",
                text: "India",
              ),
              AreaInfo(
                title: "City",
                text: "Bhagalpur, Bihar",
              ),
              AreaInfo(
                title: "Age",
                text: "20",
              ),
              AreaInfo(
                title: "Status",
                text: "Student",
              ),
              Skills(),
              SizedBox(
                height: defaultPadding,
              ),
              Languages(),
              Knowledge(),
              Divider(),
              SizedBox(
                height: defaultPadding / 2,
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Download CV",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        width: defaultPadding / 2,
                      ),
                      Icon(
                        AntIcons.downCircleFilled,
                        color: primaryColor,
                      )
                    ],
                  )),
              SizedBox(
                height: defaultPadding,
              ),
              Container(
                margin: EdgeInsets.only(bottom: defaultPadding / 2),
                color: Color(0xFF242430),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icons(
                      label: AntIcons.githubFilled,
                    ),
                    Icons(
                      label: AntIcons.instagramFilled,
                    ),
                    Icons(
                      label: AntIcons.facebookFilled,
                    ),
                    Icons(
                      label: AntIcons.linkedinFilled,
                    ),
                    Icons(
                      label: AntIcons.mailFilled,
                    ),
                  ],
                ),
              )
            ],
          ),
        ))
      ]),
    );
  }
}

class Icons extends StatelessWidget {
  const Icons({
    Key? key,
    required this.label,
  }) : super(key: key);

  final IconData label;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(label),
      color: primaryColor,
    );
  }
}
