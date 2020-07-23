import 'package:flutter/material.dart';
import 'package:nav_bar/screens/first_screen.dart';
import 'package:nav_bar/screens/second_screen.dart';

class NavigationBarController extends StatefulWidget {
  NavigationBarController({Key key}) : super(key: key);

  @override
  _NavigationBarControllerState createState() =>
      _NavigationBarControllerState();
}

class _NavigationBarControllerState extends State<NavigationBarController> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    FirstPage(
      key: PageStorageKey('First'),
    ),
    SecondPage(
      key: PageStorageKey('Second'),
    )
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget _bottomNavigationBar(int selectedIndex) {
    return BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("First")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Second")),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        bucket: bucket,
        child: _pages[_selectedIndex],
      ),
    );
  }
}
