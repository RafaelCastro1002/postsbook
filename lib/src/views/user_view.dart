import 'package:flutter/material.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/controllers/user_controller.dart';
import 'package:postsbook/src/views/widgets/list_user.dart';

class UserView extends StatefulWidget {
  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  final controller = UserController();
  final controlState = ControlStateView();

  _successComponent() {
    return ListUser(users: controller.users);
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  stateManagement(StateView state) {
    switch (state) {
      case StateView.start:
        return controlState.start();
      case StateView.success:
        return controlState.success(_successComponent());
      case StateView.error:
        return controlState.error(controller.start);
      case StateView.loading:
        return controlState.loading();
        break;
      default:
        return controlState.start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return stateManagement(controller.state.value);
        });
  }
}
