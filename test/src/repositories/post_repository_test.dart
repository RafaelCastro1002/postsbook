import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/repositories/post_repository.dart';

main() {
  final repository = PostRepository();
  test('deve retornar lista de Posts', () async {
    final response = await repository.fetchPosts();
    expect(response[0].title,
        'sunt aut facere repellat provident occaecati excepturi optio reprehenderit');
  });
}
