import 'package:flutter/material.dart';
import 'package:postsbook/src/views/widgets/post_widgets/post_widget.dart';

class PostsList extends StatelessWidget {
  final controller;
  final user;

  const PostsList({
    Key key,
    this.controller,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        key: UniqueKey(),
        itemCount: controller.posts.length,
        itemBuilder: (context, index) {
          final post = controller.posts[index];
          return PostWidget(
            post: post,
            user: user,
          );
        });
  }
}
