import 'package:dio/dio.dart';
import 'package:postsbook/src/constants/repository_constants.dart' as Constants;
import 'package:postsbook/src/models/user_model.dart';

class PostUserRepository {
  final dio = Dio();
  String url = '${Constants.url}/users';

  Future<UserModel> fetchUserById({idUser}) async {
    print('$url/$idUser');
    final response = await dio.get('$url/$idUser');
    Map json = response.data as Map;
    return UserModel.fromJson(json);
  }
}
