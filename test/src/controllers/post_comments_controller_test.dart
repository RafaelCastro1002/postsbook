import 'package:flutter_test/flutter_test.dart';
import 'package:postsbook/src/components/control_state_view.dart';
import 'package:postsbook/src/controllers/post_comments_controller.dart';

main() {
  final controller = PostCommentsController();
  test('deve preencher variavel comments', () async {
    expect(controller.state.value, StateView.start);
    await controller.start(1);
    expect(controller.state.value, StateView.success);
    expect(controller.comments.isNotEmpty, true);
  });
}
