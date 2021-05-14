import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/controllers/post_user_controller.dart';

main() {
  final controller = PostUserController();
  test('deve preencher variável user', () async {
    expect(controller.state.value, StateView.start);
    await controller.start(idUser: 1);
    print(controller.user.name);
    expect(controller.state.value, StateView.success);
    expect(controller.user.name.isNotEmpty, true);
  });
}
