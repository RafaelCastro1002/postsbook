import 'package:dio/dio.dart';
import 'package:postsbook/src/constants/repository_constants.dart' as Constants;
import 'package:postsbook/src/models/post_model.dart';

class PostRepository {
  final url = '${Constants.url}/posts';
  final dio = Dio();

  Future<List<PostModel>> fetchPosts() async {
    try {
      final response = await dio.get(url);
      final listPostMap = response.data as List;
      final listPost =
          listPostMap.map((json) => PostModel.fromJson(json)).toList();
      return listPost;
    } catch (e) {
      throw e;
    }
  }
}
