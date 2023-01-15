// class BodyPage extends StatelessWidget {
//   const BodyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           MenuBar(),
//           Stack(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     // constraints: BoxConstraints(maxHeight: 600),
//                     // height: MediaQuery.of(context).size.height,
//                     height: 600,
//                     width: double.infinity,
//                     child: Image.network(
//                       "https://images.unsplash.com/photo-1455849318743-b2233052fcff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     left: 0,
//                     right: 0,
//                     child: ClipRect(
//                       child: BackdropFilter(
//                         filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                         child: Container(
//                           // constraints: BoxConstraints(maxHeight: 200),
//                           // height: MediaQuery.of(context).size.height * 0.4,
//                           height: 200,
//                           width: double.infinity,
//                           color:
//                               Color.fromARGB(255, 26, 12, 58).withOpacity(0.6),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               Positioned(
//                   bottom: 50,
//                   left: 100,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 250,
//                         width: 250,
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             image: DecorationImage(
//                                 image: NetworkImage(
//                                     "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"))),
//                       ),
//                       Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(kDefaultPadding),
//                             child: Text(
//                               "Harsh",
//                               style:
//                                   TextStyle(fontSize: 24, color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: kDefaultPadding * 30,
//                             vertical: kDefaultPadding * 2),
//                         child: ClipRRect(
//                           child: BackdropFilter(
//                             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//                             child: Container(
//                               height: 80,
//                               width: 170,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.white.withOpacity(0.2)),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ))
//             ],
//           )
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
//   int selectedIndex = 0;
//   List menuItems = ["HOME", "PROJECTS", "CONTACT ME"];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70,
//       width: double.infinity,
//       decoration: BoxDecoration(
//           border: Border(
//               bottom: BorderSide(
//                   width: 2, color: Color.fromARGB(255, 34, 23, 77)))),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Logo(),
//             Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(
//                     menuItems.length, (index) => MenuItemm(index))),
//             SearchBox(),
//             Logo()
//           ],
//         ),
//       ),
//     );
//   }

//   Widget MenuItemm(int index) => Container(
//       padding: EdgeInsets.all(kDefaultPadding),
//       decoration: BoxDecoration(
//           border: Border(
//               right: BorderSide(
//                   width: 2, color: Color.fromARGB(255, 34, 23, 77)))),
//       child: Text(
//         menuItems[index],
//         style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//             color: Color.fromARGB(255, 76, 72, 98)),
//       ));
// }

// class SearchBox extends StatelessWidget {
//   const SearchBox({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(kDefaultPadding),
//       decoration: BoxDecoration(
//           border: Border(
//               right: BorderSide(
//                   width: 2, color: Color.fromARGB(255, 34, 23, 77)))),
//       child: Container(
//         constraints: BoxConstraints(maxHeight: 40),
//         padding: EdgeInsets.all(kDefaultPadding),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.white.withOpacity(0.4)),
//       ),
//     );
//   }
// }

// class Logo extends StatelessWidget {
//   const Logo({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(kDefaultPadding),
//       decoration: BoxDecoration(
//           border: Border(
//               right: BorderSide(
//                   width: 2, color: Color.fromARGB(255, 34, 23, 77)))),
//       child: Icon(
//         Icons.home_filled,
//         color: Colors.white,
//       ),
//     );
//   }
// }
