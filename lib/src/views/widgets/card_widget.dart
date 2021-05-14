import 'package:flutter/material.dart';
import 'package:postsbook/src/components/row_information.dart';
import 'package:postsbook/src/models/user_model.dart';

class CardWidget extends StatefulWidget {
  final String titleCard;
  final Widget body;

  const CardWidget({
    Key key,
    this.titleCard,
    this.body,
  }) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      width: 360,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.titleCard,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ),
              widget.body,
            ],
          ),
        ),
      ),
    );
  }
}
