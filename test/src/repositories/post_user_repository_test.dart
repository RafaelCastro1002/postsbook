import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/repositories/post_user_repository.dart';

main() {
  final repository = PostUserRepository();
  test('deve retornar usuario', () async {
    final response = await repository.fetchUserById(idUser: 1);
    expect(response.name, 'Leanne Graham');
  });
}
