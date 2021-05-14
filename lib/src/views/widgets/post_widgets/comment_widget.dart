import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final String email;
  final String title;
  final String body;

  const CommentWidget({Key key, this.email, this.title, this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25,
        left: 25,
        bottom: 4,
      ),
      child: Card(
        color: Colors.grey[100],
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                email,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Text(body, style: TextStyle(fontSize: 11)),
            ],
          ),
        ),
      ),
    );
  }
}
