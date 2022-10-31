import 'package:get/get.dart';

import '../controllers/full_registration_controller.dart';

class FullRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FullRegistrationController>(
      () => FullRegistrationController(),
    );
  }
}
