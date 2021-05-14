import 'package:flutter/foundation.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/models/post_model.dart';
import 'package:postsbook/src/repositories/user_posts_repository.dart';

class UserPostsController {
  final repository = UserPostsRepository();
  List<PostModel> posts = [];
  final state = ValueNotifier<StateView>(StateView.start);

  Future start({idUser}) async {
    state.value = StateView.loading;
    try {
      posts = await repository.fetchPostsByUser(idUser: idUser);
      state.value = StateView.success;
    } catch (e) {
      state.value = StateView.error;
    }
  }
}
