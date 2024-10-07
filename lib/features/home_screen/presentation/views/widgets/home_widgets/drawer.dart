// import 'package:flutter/material.dart';

// class MyDrawer extends StatefulWidget {
//   @override
//   _MyDrawerState createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<MyDrawer> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 73, bottom: 32),
//             child: ListTile(
//               title: Image.asset(
//                 "images/image18.png",
//                 width: 95,
//                 height: 159,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 44, bottom: 32),
//             child: ListTile(
//               leading: Icon(Icons.person),
//               title: const Text('Profile'),
//               selected: _selectedIndex == 0,
//               onTap: () {
//                 _onItemTapped(0);
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 44, bottom: 32),
//             child: ListTile(
//               leading: Icon(Icons.language),
//               title: const Text('English'),
//               selected: _selectedIndex == 1,
//               onTap: () {
//                 _onItemTapped(1);
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 44, bottom: 32),
//             child: ListTile(
//               leading: Icon(Icons.shopping_cart),
//               title: const Text('Orders'),
//               selected: _selectedIndex == 2,
//               onTap: () {
//                 _onItemTapped(2);
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 44, bottom: 32),
//             child: ListTile(
//               leading: Icon(Icons.notifications_active),
//               title: const Text('Notification'),
//               selected: _selectedIndex == 3,
//               onTap: () {
//                 _onItemTapped(3);
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 44, bottom: 32),
//             child: ListTile(
//               leading: Icon(Icons.star_rate),
//               title: const Text('Rating'),
//               selected: _selectedIndex == 4,
//               onTap: () {
//                 _onItemTapped(4);
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 44, bottom: 32),
//             child: ListTile(
//               leading: Icon(Icons.contacts),
//               title: const Text('Contact Us'),
//               selected: _selectedIndex == 5,
//               onTap: () {
//                 _onItemTapped(5);
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
