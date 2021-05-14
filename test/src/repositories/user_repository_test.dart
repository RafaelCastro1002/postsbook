import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/repositories/user_repository.dart';

main() {
  final repository = UserRepository();
  test('Deve retornar lista de Users', () async {
    final response = await repository.fetchUsers();
    expect(response.isNotEmpty, true);
  });
}
