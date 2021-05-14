import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/controllers/user_posts_controller.dart';

main() {
  final controller = UserPostsController();
  test('deve preencher a variavel posts', () async {
    expect(controller.state.value, StateView.start);
    await controller.start(idUser: 1);
    expect(controller.state.value, StateView.success);
    expect(controller.posts[0].userId, 1);
  });
}
