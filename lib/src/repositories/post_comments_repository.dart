import 'package:dio/dio.dart';
import 'package:postsbook/src/models/comment_model.dart';
import 'package:postsbook/src/constants/repository_constants.dart' as Constants;

class PostCommentsRepository {
  final dio = Dio();
  final url = Constants.url;

  Future<List<CommentModel>> fetchCommentsByPostId(idPost) async {
    try {
      final response = await dio.get('$url/posts/$idPost/comments');
      List listMap = response.data as List;
      List<CommentModel> listModel =
          listMap.map((json) => CommentModel.fromJson(json)).toList();
      return listModel;
    } catch (e) {
      throw e;
    }
  }
}
