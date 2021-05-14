import 'package:flutter/material.dart';
import 'package:postsbook/src/components/title_divider_area.dart';
import 'package:postsbook/src/controllers/user_posts_controller.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/views/post_view.dart';
import 'package:postsbook/src/views/widgets/perfil_header.dart';

class PerfilUserView extends StatefulWidget {
  final UserModel user;

  const PerfilUserView({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  _PerfilUserViewState createState() => _PerfilUserViewState();
}

class _PerfilUserViewState extends State<PerfilUserView> {
  final controller = UserPostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User perfil')),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 45, horizontal: 10),
          child: Center(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        PerfilHeader(
                          user: widget.user,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                        ),
                        TitleDividerArea(),
                        Container(
                          child: PostView(UniqueKey(), controller, widget.user),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
