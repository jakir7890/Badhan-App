import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DatePickerController extends GetxController {
  var selectedDate = DateTime.now().obs;
  TextEditingController textEditingController = TextEditingController();
  void selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(1970),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      textEditingController.text =
          DateFormat('dd-MM-yyyy').format(selectedDate.value).toString();
    }
  }

  @override
  void onInit() {
    textEditingController.text =
        DateFormat('dd-MM-yyyy').format(DateTime.now()).toString();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatePickerController>(
      () => DatePickerController(),
    );
  }
}
