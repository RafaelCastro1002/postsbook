import 'package:flutter/material.dart';
import 'package:postsbook/src/views/widgets/post_widgets/comment_widget.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/components/row_divider_with_text.dart';
import 'package:postsbook/src/controllers/post_comments_controller.dart';

class CommentsList extends StatefulWidget {
  final idPost;
  final isVisible;

  const CommentsList({
    Key key,
    this.idPost,
    this.isVisible = false,
  }) : super(key: key);

  @override
  _CommentsListState createState() => _CommentsListState();
}

class _CommentsListState extends State<CommentsList> {
  final controller = PostCommentsController();
  final controlState = ControlStateView();

  _successWidget() {
    return ListView.builder(
      itemCount: controller.comments.length,
      itemBuilder: (contex, index) {
        final comment = controller.comments[index];

        return CommentWidget(
          email: comment.email,
          title: comment.name,
          body: comment.body,
        );
      },
    );
  }

  _started() {
    controller.start(widget.idPost);
  }

  stateManagement(StateView state) {
    switch (state) {
      case StateView.success:
        return controlState.success(_successWidget());
      case StateView.error:
        return controlState.error(_started);
      case StateView.loading:
        return controlState.loading();
      case StateView.start:
        return controlState.start();
        break;
      default:
        return controlState.start();
    }
  }

  @override
  void initState() {
    super.initState();
    controller.start(widget.idPost);
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isVisible) {
      return Container();
    }

    return Container(
      child: Column(
        children: [
          RowDividerWithText(
            text: Text('Comments'),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Container(
            height: 300,
            child: AnimatedBuilder(
              animation: controller.state,
              builder: (context, child) {
                return stateManagement(controller.state.value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
