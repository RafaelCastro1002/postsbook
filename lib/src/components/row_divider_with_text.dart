import 'package:flutter/material.dart';

class RowDividerWithText extends StatelessWidget {
  final Text text;

  const RowDividerWithText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(child: Divider()),
      text,
      Expanded(child: Divider()),
    ]);
  }
}
