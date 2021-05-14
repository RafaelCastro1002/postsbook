import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/controllers/post_controller.dart';

main() {
  final controller = PostController();
  test('deve preencher a variavel posts', () async {
    expect(controller.state.value, StateView.start);
    await controller.start();
    expect(controller.state.value, StateView.success);
    expect(controller.posts.isNotEmpty, true);
  });
}
