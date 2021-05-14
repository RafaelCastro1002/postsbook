import 'package:flutter/material.dart';
import 'package:postsbook/src/views/widgets/user_identification_ticket/user_identification_ticket.dart';
import 'package:postsbook/src/models/user_model.dart';

class ListUser extends StatelessWidget {
  final List<UserModel> users;

  const ListUser({
    Key key,
    this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final UserModel user = users[index];
        return UserIdentificationTicket(
          user: user,
        );
      },
    );
  }
}
