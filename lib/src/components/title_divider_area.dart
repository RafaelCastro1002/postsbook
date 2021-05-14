import 'package:flutter/material.dart';

class TitleDividerArea extends StatelessWidget {
  final String title;

  const TitleDividerArea({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Posts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.blue[600],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Divider(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
