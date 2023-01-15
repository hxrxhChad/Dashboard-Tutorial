// // ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

// import 'package:antdesign_icons/antdesign_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:yorportfolio/constants.dart';

// class TopBar extends StatelessWidget {
//   const TopBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: BoxConstraints(maxHeight: 700, maxWidth: 1600),
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/space.jpg"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           MenuBar(),
//           SizedBox(
//             height: 100 * 3,
//           ),
//           FirstBody(),
//         ],
//       ),
//     );
//   }
// }

// class MenuBar extends StatefulWidget {
//   const MenuBar({
//     super.key,
//   });

//   @override
//   State<MenuBar> createState() => _MenuBarState();
// }

// class _MenuBarState extends State<MenuBar> {
//   int selectedItems = 0;
//   List topMenuItems = ["About", "Works", "Contact"];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//           vertical: kDefaultPadding, horizontal: kDefaultPadding * 5),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(right: kDefaultPadding),
//                 child: IconButton(
//                   alignment: Alignment.topCenter,
//                   icon: Icon(
//                     AntIcons.codeFilled,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                   onPressed: () {},
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: List.generate(
//                     topMenuItems.length, (index) => TopMenuItems(index)),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Container(
//                 alignment: Alignment.center,
//                 height: 40,
//                 width: 200,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.white.withOpacity(0.2)),
//                 child: Row(
//                   children: [
//                     IconButton(
//                       onPressed: null,
//                       icon: Icon(
//                         AntIcons.searchOutlined,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Text(
//                       "Search",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget TopMenuItems(int index) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
//           child: Text(
//             topMenuItems[index],
//             style: TextStyle(
//                 color: Colors.white, fontSize: 17, fontWeight: FontWeight.w300),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FirstBody extends StatelessWidget {
//   const FirstBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 5),
//           child: Text(
//             "Built for Revolution.",
//             style: TextStyle(color: Colors.white, fontSize: 50),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 5),
//           child: Text(
//             "I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.",
//             style: TextStyle(color: Colors.white70, fontSize: 25),
//             maxLines: 5,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(
//               horizontal: kDefaultPadding * 5, vertical: kDefaultPadding),
//           child: Container(
//             constraints: BoxConstraints(maxHeight: 120),
//             width: 4,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 23, 20, 109),
//                 Color.fromARGB(255, 98, 23, 112)
//               ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
