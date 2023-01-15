// // ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names

// import 'package:antdesign_icons/antdesign_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:yorportfolio/constants.dart';

// class BottomBar extends StatefulWidget {
//   const BottomBar({
//     super.key,
//   });

//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int selectedItems = 0;
//   List bottomElements = ["GitHub", "Instagram", "Facebook", "LinkdIn"];
//   List bottoIcons = [
//     AntIcons.githubOutlined,
//     AntIcons.instagramFilled,
//     AntIcons.facebookFilled,
//     AntIcons.linkedinFilled,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//           vertical: kDefaultPadding, horizontal: kDefaultPadding * 2),
//       decoration: BoxDecoration(
//           // color: Colors.white,
//           border: Border(
//               top: BorderSide(
//                   width: 1.5, color: kLightTextColor.withOpacity(0.2)))),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   bottomElements.length, (index) => buttonsName(index))),
//           Row(
//             children:
//                 List.generate(bottoIcons.length, (index) => BottomIcons(index)),
//           )
//         ],
//       ),
//     );
//   }

//   Container BottomIcons(int index) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
//       child: Icon(
//         bottoIcons[index],
//         color: Colors.white,
//       ),
//     );
//   }

//   Widget buttonsName(int index) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
//           child: Text(
//             bottomElements[index],
//             style: TextStyle(fontSize: 15, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
// }
