import 'package:flutter/material.dart';
import 'package:postsbook/src/views/post_view.dart';
import 'package:postsbook/src/views/user_view.dart';

class MenuBottomOptions extends StatelessWidget {
  final int selectedIndexOption;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    SizedBox(
      child: SingleChildScrollView(
          physics: ScrollPhysics(), child: PostView(UniqueKey())),
    ),
    SizedBox(
      child: UserView(),
    ),
    // SizedBox(),
  ];

  const MenuBottomOptions({
    Key key,
    this.selectedIndexOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _widgetOptions.elementAt(selectedIndexOption),
    );
  }
}
