import 'package:flutter/foundation.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/models/comment_model.dart';
import 'package:postsbook/src/repositories/post_comments_repository.dart';

class PostCommentsController {
  final repository = PostCommentsRepository();
  List<CommentModel> comments = [];
  final state = ValueNotifier<StateView>(StateView.start);

  Future start(idPost) async {
    state.value = StateView.loading;
    try {
      comments = await repository.fetchCommentsByPostId(idPost);
      state.value = StateView.success;
    } catch (e) {
      state.value = StateView.error;
    }
  }
}
