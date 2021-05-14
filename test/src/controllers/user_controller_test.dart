import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/controllers/user_controller.dart';

main() {
  final controller = UserController();
  test('retornar lista de usuarios', () async {
    expect(controller.state.value, StateView.start);
    await controller.start();
    expect(controller.state.value, StateView.success);
    expect(controller.users.isNotEmpty, true);
  });
}
