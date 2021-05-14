import 'package:flutter/material.dart';
import 'package:postsbook/src/controllers/post_controller.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/views/widgets/post_widgets/post_loading_skeleton.dart';
import 'package:postsbook/src/views/widgets/post_widgets/posts_list.dart';

// ignore: must_be_immutable
class PostView extends StatefulWidget {
  var _controller;
  var _user;

  PostView(Key key, [controller, user]) {
    // super({key: this.key, controller: this.controller});
    _controller = controller ?? PostController();
    _user = user ?? false;
  }

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  final controlState = ControlStateView();
  var controller;

  _successComponent() {
    return Container(
        child: PostsList(
      controller: controller,
      user: widget._user,
    ));
  }

  _loading() {
    return PostLoadingSkeleton();
  }

  started() {
    if (!(widget._user is UserModel)) {
      controller.start();
    } else {
      controller.start(idUser: widget._user.id);
    }
  }

  @override
  void initState() {
    super.initState();
    controller = widget._controller;
    started();
  }

  stateManagement(StateView state) {
    switch (state) {
      case StateView.start:
        return controlState.start();
      case StateView.success:
        return controlState.success(_successComponent());
      case StateView.error:
        return controlState.error(started);
      case StateView.loading:
        return _loading();
        break;
      default:
        return controlState.start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller.state,
        builder: (contex, child) {
          return stateManagement(controller.state.value);
        });
  }
}
