import 'package:flutter/material.dart';

class RowInformation extends StatelessWidget {
  final String title;
  final String data;

  const RowInformation({
    Key key,
    this.title,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              child: Text(
                this.title,
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800]),
              ),
            ),
            VerticalDivider(
              color: Colors.black,
              width: 50,
            ),
            Expanded(
              child: Text(
                this.data,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
