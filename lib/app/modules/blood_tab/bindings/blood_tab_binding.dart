import 'package:get/get.dart';

import '../controllers/blood_tab_controller.dart';

class BloodTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BloodTabController>(
      () => BloodTabController(),
    );
  }
}
