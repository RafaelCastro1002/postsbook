import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndexNavigation;
  final onItemTapped;

  const BottomNavigation({
    Key key,
    this.selectedIndexNavigation,
    this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.sticky_note_2),
          label: 'Posts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Users',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.school),
        //   label: 'School',
        // ),
      ],
      currentIndex: selectedIndexNavigation,
      selectedItemColor: Colors.amber[800],
      onTap: onItemTapped,
    );
  }
}
