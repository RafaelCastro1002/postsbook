import 'package:flutter/material.dart';
import 'package:postsbook/src/functions/get_initials_from_name.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/views/perfil_user_view.dart';
import 'circle_avatar_user.dart';

class UserIdentificationTicket extends StatelessWidget {
  final UserModel user;

  const UserIdentificationTicket({
    Key key,
    this.user,
  }) : super(key: key);

  userIdentification(context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PerfilUserView(
              user: this.user,
            ),
          ),
        );
      },
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: CircleAvatarUser(
            iniciaisDoNome:
                this.user.name.isNotEmpty ? getInitials(this.user.name) : '',
          ),
        ),
        title: Text(
          this.user.name,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        subtitle: Text(
          this.user.email.isNotEmpty ? this.user.email : '',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (this.user.name != null && this.user.name != null) {
      return userIdentification(context);
    }

    return Container();
  }
}
