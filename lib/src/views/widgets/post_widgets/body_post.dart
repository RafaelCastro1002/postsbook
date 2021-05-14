import 'package:flutter/material.dart';

class BodyPost extends StatelessWidget {
  final String title;
  final String body;

  const BodyPost({
    Key key,
    this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 20, top: 20, bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Text(body),
        ],
      ),
    );
  }
}
