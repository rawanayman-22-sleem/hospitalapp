

import 'package:flutter/material.dart';

// class DrawerMenuScreen extends StatelessWidget {
//   const DrawerMenuScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Drawer(
//       child: Container(
//         color: Colors.black,
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.only(left: 20, top: 50),
//
//               child: Row(
//                 children: [
//
// //User Name
//                   Container(
//                     margin: EdgeInsets.only(left: 30),
//                     child: CustomText(
//                       color: Colors.white,
//                       text: 'Rw2n',
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//
// //Account
//             Container(
//               margin: EdgeInsets.only(left: 20),
//               child: ListTile(
//                 leading: SvgPicture.asset("asset/Icons/icon-Account.svg"),
//                 title: CustomText(
//                   color: Colors.white,
//                   text: 'Account',
//                   fontSize: 14,
//                   fontWeight: FontWeight.normal,
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
// //Settings
//             Container(
//               margin: EdgeInsets.only(left: 20),
//               child: ListTile(
//                 leading: SvgPicture.asset(
//                     "asset/Icons/icon-Settings.svg"),
//                 title: CustomText(
//                   color: wihte,
//                   text: "Settings",
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//
//  //About
//             Container(
//               margin: EdgeInsets.only(left: 20),
//               child: ListTile(
//                 leading: SvgPicture.asset("asset/Icons/icon-About.svg"),
//                 title: CustomText(
//                   color: wihte,
//                   text: "About",
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
// //Logout
//             Container(
//               margin: EdgeInsets.only(left: 20),
//               child: ListTile(
//                 leading: SvgPicture.asset("asset/Icons/icon-Logout.svg"),
//                 title: CustomText(
//                   color: wihte,
//                   text: "Logout",
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }