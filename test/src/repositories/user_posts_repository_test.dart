import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/repositories/user_posts_repository.dart';

main() {
  final repository = UserPostsRepository();

  test('deve retornar lista de PostModel do usuário com id 1', () async {
    final response = await repository.fetchPostsByUser(idUser: 1);
    expect(response[0].userId, 1);
  });
}
