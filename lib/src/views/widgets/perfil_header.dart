import 'package:flutter/material.dart';
import 'package:postsbook/src/functions/get_initials_from_name.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/views/detailed_user_information_view.dart';
import 'package:postsbook/src/views/widgets/user_identification_ticket/circle_avatar_user.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class PerfilHeader extends StatefulWidget {
  final UserModel user;

  const PerfilHeader({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  _PerfilHeaderState createState() => _PerfilHeaderState();
}

class _PerfilHeaderState extends State<PerfilHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatarUser(
            iniciaisDoNome: getInitials(widget.user.name),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
        Text(
          '${widget.user.name} | ${widget.user.username}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 13),
        ),
        Text(
          '${widget.user.email}',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
        ),
        Text(
          '${widget.user.phone}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailedUserInformationView(
                    user: widget.user,
                  ),
                ),
              );
            },
            child: Text('View more...'))
      ],
    );
  }
}
