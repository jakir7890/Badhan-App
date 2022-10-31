import 'package:get/get.dart';

import '../controllers/chat_ui_controller.dart';

class ChatUiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatUiController>(
      () => ChatUiController(),
    );
  }
}
