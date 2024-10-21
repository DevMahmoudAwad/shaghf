import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/bottomNavigationbar.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/chipath.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/home_3image_widget.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/home_button_widget.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/home_buttonnavigation_widget.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/home_image_wedget.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/home_adverts_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onnItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    print(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeImageWedget(),
            Padding(
              padding: EdgeInsets.only(left: 24, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Advertisement",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: HomeAdvertsListWidget(),
            ),
            HomeButtonWidget(),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 24, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ClipPathes(),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
      bottomNavigationBar: HomeButtonNavigationWidget(
        currentIndex: _currentIndex,
        x: _onnItemTapped,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //       image:
            //           DecorationImage(image: AssetImage("images/image18.png"))),
            //   child: null,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 73, bottom: 32),
              child: ListTile(
                title: Image.asset(
                  "images/image18.png",
                  width: 95,
                  height: 159,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, bottom: 32),
              child: ListTile(
                leading: Icon(Icons.person),
                title: const Text('Profile'),
                selected: _selectedIndex == 0,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(0);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, bottom: 32),
              child: ListTile(
                leading: Icon(Icons.language),
                title: const Text('English'),
                selected: _selectedIndex == 1,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(1);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, bottom: 32),
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: const Text('Orders'),
                selected: _selectedIndex == 2,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(2);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, bottom: 32),
              child: ListTile(
                leading: Icon(Icons.notifications_active),
                title: const Text('Notification'),
                selected: _selectedIndex == 3,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(3);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, bottom: 32),
              child: ListTile(
                leading: Icon(Icons.star_rate),
                title: const Text('Rating'),
                selected: _selectedIndex == 4,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(4);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44, bottom: 32),
              child: ListTile(
                leading: Icon(Icons.contacts),
                title: const Text('Contact Us'),
                selected: _selectedIndex == 5,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(5);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
