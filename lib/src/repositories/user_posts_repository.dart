import 'package:dio/dio.dart';
import 'package:postsbook/src/constants/repository_constants.dart' as Constants;
import 'package:postsbook/src/models/post_model.dart';

class UserPostsRepository {
  final url = '${Constants.url}/users';
  final dio = Dio();

  Future<List<PostModel>> fetchPostsByUser({idUser}) async {
    try {
      final response = await dio.get('$url/$idUser/posts');
      final responseJson = response.data as List;
      List<PostModel> list =
          responseJson.map((json) => PostModel.fromJson(json)).toList();
      return list;
    } catch (e) {
      throw e;
    }
  }
}
