import 'package:flutter/foundation.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/repositories/post_user_repository.dart';

class PostUserController {
  final repository = PostUserRepository();
  UserModel user;
  final state = ValueNotifier<StateView>(StateView.loading);

  Future start({idUser}) async {
    try {
      user = await repository.fetchUserById(idUser: idUser);
      state.value = StateView.success;
    } catch (e) {
      print(e);
      state.value = StateView.error;
    }
  }
}
