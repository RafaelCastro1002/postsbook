import 'package:flutter/material.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/views/widgets/user_identification_ticket/user_identification_ticket.dart';
import 'package:postsbook/src/views/widgets/user_identification_ticket/user_indentification_skeleton.dart';
import 'package:postsbook/src/controllers/post_user_controller.dart';

class TitleIdentificationPost extends StatefulWidget {
  final idUser;
  final user;

  const TitleIdentificationPost({
    Key key,
    this.idUser,
    this.user,
  }) : super(key: key);

  @override
  _TitleIdentificationPostState createState() =>
      _TitleIdentificationPostState();
}

class _TitleIdentificationPostState extends State<TitleIdentificationPost> {
  final controller = PostUserController();

  _success(user) {
    return UserIdentificationTicket(
      user: user,
    );
  }

  _loading() {
    return UserIdentificationSkeleton();
  }

  stateManegement(state) {
    switch (state) {
      case StateView.success:
        return _success(controller.user);
      case StateView.loading:
        return _loading();
      case StateView.error:
        return () {
          return controller.start(idUser: widget.idUser);
        };
        break;
      default:
        return _loading();
    }
  }

  @override
  void initState() {
    super.initState();
    if (!(widget.user is UserModel)) {
      controller.start(idUser: widget.idUser);
    }
  }

  isUserValue() {
    if (widget.user is UserModel) {
      return _success(widget.user);
    }

    return stateManegement(controller.state.value);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller.state,
        builder: (contex, child) {
          return isUserValue();
        });
  }
}
