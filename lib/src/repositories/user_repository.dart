import 'package:dio/dio.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/constants/repository_constants.dart' as Constants;

class UserRepository {
  final dio = Dio();
  final String url = '${Constants.url}/users';

  Future<List<UserModel>> fetchUsers() async {
    try {
      final response = await dio.get(url);
      final listUsersMap = response.data as List;
      final listUsers =
          listUsersMap.map((json) => UserModel.fromJson(json)).toList();
      return listUsers;
    } catch (e) {
      throw e;
    }
  }
}
