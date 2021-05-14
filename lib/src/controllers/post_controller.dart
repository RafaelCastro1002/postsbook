import 'package:flutter/foundation.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/models/post_model.dart';
import 'package:postsbook/src/repositories/post_repository.dart';

class PostController {
  List<PostModel> posts = [];
  final repository = PostRepository();
  final state = ValueNotifier<StateView>(StateView.start);

  Future start() async {
    state.value = StateView.loading;
    try {
      posts = await repository.fetchPosts();
      state.value = StateView.success;
    } catch (e) {
      state.value = StateView.error;
    }
  }
}
