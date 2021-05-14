import 'package:flutter/material.dart';
import 'package:postsbook/src/models/post_model.dart';
import 'package:postsbook/src/views/widgets/post_widgets/body_post.dart';
import 'package:postsbook/src/views/widgets/post_widgets/comments_list.dart';
import 'package:postsbook/src/views/widgets/post_widgets/title_identification_post.dart';

class PostWidget extends StatefulWidget {
  final PostModel post;
  final user;

  const PostWidget({
    Key key,
    this.post,
    this.user,
  }) : super(key: key);
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  ValueNotifier<bool> _viewComments;

  @override
  void initState() {
    super.initState();
    this._viewComments = ValueNotifier<bool>(false);
  }

  @override
  void dispose() {
    this._viewComments.dispose();
    super.dispose();
  }

  changeExpandedComments() {
    this._viewComments.value = !this._viewComments.value;
  }

  buttomExpanded(bool expanded) {
    if (expanded) {
      return IconButton(
          iconSize: 40,
          icon: Icon(Icons.arrow_drop_up),
          onPressed: changeExpandedComments);
    }

    return IconButton(
        iconSize: 40,
        icon: Icon(Icons.arrow_drop_down),
        onPressed: changeExpandedComments);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: Card(
              margin: EdgeInsets.only(bottom: 2),
              child: Column(
                children: [
                  TitleIdentificationPost(
                    idUser: widget.post.userId,
                    user: widget.user,
                  ),
                  BodyPost(
                    title: widget.post.title,
                    body: widget.post.body,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: double.infinity,
                    // height: 50,
                    child: ValueListenableBuilder(
                      key: UniqueKey(),
                      valueListenable: _viewComments,
                      builder: (contex, hasError, child) {
                        return buttomExpanded(this._viewComments.value);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          ValueListenableBuilder(
            key: UniqueKey(),
            valueListenable: _viewComments,
            builder: (contex, hasError, child) {
              return CommentsList(
                isVisible: this._viewComments.value,
                idPost: widget.post.id,
              );
            },
          ),
        ],
      ),
    );
  }
}
