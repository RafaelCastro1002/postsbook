import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/repositories/post_comments_repository.dart';

main() {
  final repository = PostCommentsRepository();
  test('deve retornar lista de comentarios', () async {
    final response = await repository.fetchCommentsByPostId(1);
    expect(response[0].email, 'Eliseo@gardner.biz');
  });
}
