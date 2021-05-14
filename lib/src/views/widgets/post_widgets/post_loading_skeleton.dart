import 'package:flutter/material.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class PostLoadingSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      builder: Padding(
        padding: EdgeInsets.only(
          bottom: 20,
          top: 10,
          right: 10,
          left: 10,
        ),
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 350,
          child: Card(
            color: Colors.white,
          ),
        ),
      ),
      items: 3,
      period: Duration(seconds: 2),
      highlightColor: Colors.lightBlue[300],
      direction: SkeletonDirection.ttb,
    );
  }
}
