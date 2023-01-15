// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers
// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:yorportfolio/bannerSig/CounterW.dart';
import 'package:yorportfolio/bannerSig/JsonProj.dart';
import 'package:yorportfolio/bannerSig/ProjectS.dart';
import 'package:yorportfolio/main.dart';

class BannerSigment extends StatelessWidget {
  const BannerSigment({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHome(
      children: [
        Banner(),
        SizedBox(
          height: defaultPadding,
        ),
        CounterW(),
        SizedBox(
          height: defaultPadding,
        ),
        ProjectS(),
        SizedBox(
          height: defaultPadding,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Column(
            children: [
              Text(
                "Remarks & Feedback",
                style: Theme.of(context).textTheme.headline6!,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    remarks.length,
                    (index) => Container(
                      padding: EdgeInsets.all(defaultPadding),
                      color: secondaryColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            remarks[index].name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle2!,
                          ),
                          Text(
                            remarks[index].remark,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: defaultPadding / 2,
                          ),
                          Text(
                            remarks[index].source,
                            style: TextStyle(color: primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/space.jpg",
          fit: BoxFit.cover,
        ),
        Container(
          color: darkColor.withOpacity(0.66),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Explore my Work Space &\nmy best works.',
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                maxLines: 2,
              ),
              DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle1!,
                  maxLines: 1,
                  child: Row(
                    children: [
                      Text.rich(TextSpan(text: "<", children: [
                        TextSpan(
                          text: "devs",
                          style: TextStyle(color: primaryColor),
                        ),
                        TextSpan(text: ">")
                      ])),
                      SizedBox(
                        width: defaultPadding / 2,
                      ),
                      Text("I build "),
                      AnimatedTextKit(animatedTexts: [
                        TyperAnimatedText(
                            "mobile applications for both android & ios",
                            speed: Duration(milliseconds: 60)),
                        TyperAnimatedText("responsive web applications",
                            speed: Duration(milliseconds: 60)),
                        TyperAnimatedText("machine learning & more projects",
                            speed: Duration(milliseconds: 60))
                      ]),
                      SizedBox(
                        width: defaultPadding / 2,
                      ),
                      Text.rich(TextSpan(text: "<", children: [
                        TextSpan(
                          text: "devs",
                          style: TextStyle(color: primaryColor),
                        ),
                        TextSpan(text: ">")
                      ])),
                    ],
                  )),
              SizedBox(height: defaultPadding),
              ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor),
                  child: Text(
                    "Explore Now",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: darkColor),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
