import 'package:get/get.dart';

import '../controllers/bloodgroup_call_controller.dart';

class BloodgroupCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BloodgroupCallController>(
      () => BloodgroupCallController(),
    );
  }
}
