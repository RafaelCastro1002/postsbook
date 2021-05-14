import 'package:flutter/material.dart';
import 'package:postsbook/src/components/bottom_navigation_bar.dart';
import 'package:postsbook/src/constants/bottom_navigation_constants.dart'
    as Constants;
import 'package:postsbook/src/views/menu_options.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

/// This is the private State class that goes with HomeView.
class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Constants.listTitleAppBar.elementAt(_selectedIndex),
      ),
      body: MenuBottomOptions(
        selectedIndexOption: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndexNavigation: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
