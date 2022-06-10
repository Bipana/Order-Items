import 'package:assignment/constant.dart';
import 'package:assignment/screens/homeLayout.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  //final BuiltList<Users> users;

  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void changeTab(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeLayout(),
    ];
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: kwhite,
          currentIndex: _currentIndex,
          onTap: (index) => changeTab(index),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: kgreen,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.create_new_folder,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
                label: ''),
          ]),
    );
  }
}
