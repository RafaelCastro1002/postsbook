import 'package:flutter/material.dart';
import 'package:postsbook/src/functions/generate_random_number_function.dart';
import 'package:postsbook/src/constants/user_view_constants.dart' as Constants;

class CircleAvatarUser extends StatelessWidget {
  final String iniciaisDoNome;

  const CircleAvatarUser({
    Key key,
    this.iniciaisDoNome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Constants.colorsAvatarBackground[
              generateRandomNumberFunction(
                  Constants.colorsAvatarBackground.length)]
          .withOpacity(0.9),
      child: Text(
        iniciaisDoNome,
        style: TextStyle(color: Colors.white.withOpacity(1)),
      ),
    );
  }
}
