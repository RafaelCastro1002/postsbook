import 'package:flutter/foundation.dart';
import 'package:postsbook/src/components/control_state_view.dart'
    as ControlState;
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/repositories/user_repository.dart';

class UserController {
  final _repository = UserRepository();
  List<UserModel> users = [];
  final state =
      ValueNotifier<ControlState.StateView>(ControlState.StateView.start);

  Future start() async {
    state.value = ControlState.StateView.loading;

    try {
      users = await _repository.fetchUsers();
      state.value = ControlState.StateView.success;
    } catch (e) {
      print(e);
      state.value = ControlState.StateView.error;
    }
  }
}
