import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/blood_tab/views/blood_tab_view.dart';
import 'package:badhan_apps/app/modules/global_widgets/button.dart';
import 'package:badhan_apps/app/modules/global_widgets/drop_down.dart';
import 'package:badhan_apps/app/modules/patient_info/controllers/date_picker_controller.dart';
import 'package:badhan_apps/app/modules/registration/widgets/custome_textfield.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/patient_info_controller.dart';

class PatientInfoView extends GetView<PatientInfoController> {
  const PatientInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DatePickerController controller = Get.put(DatePickerController());
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Patient Information",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  color: ColorConstants.kSecondaryColor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CircleButton(
              bloodGroup: 'A+',
              onPress: () {},
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                  // key: _formKey,
                  child: Column(
                children: [
                  PhysicalModel(
                    color: ColorConstants.kPrimaryColor,
                    elevation: 6.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: CustomeTextField(
                      hintText: 'Enter Patient Name',
                      labelText: 'Patient Name',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomeDropDown(
                    listItem: const [
                      "1",
                      "2",
                      "3",
                      "4",
                      "5",
                      '6',
                      "7",
                      "8",
                      "9",
                      "10",
                      "11",
                      "12",
                      "13",
                      "14",
                      "15",
                      '16',
                      "17",
                      "18",
                      "19",
                      "20"
                    ],
                    hintText: 'Select Patinet Age',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomeDropDown(
                    listItem: const ["Male", "Female", "Others"],
                    hintText: 'Select your Gender',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        dateController: controller.textEditingController,
                        hintText: 'Select Blood Required Date',
                        labelText: 'Blood Required Date',
                        suffix: Icon(Icons.calendar_today_outlined),
                        myOnTap: () {
                          controller.selectDate();
                        },
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  CustomeDropDown(
                    listItem: const [
                      '1',
                      '2',
                      '3',
                      '4',
                      '5',
                      '6',
                      '7',
                      '8',
                      '9',
                      '10'
                    ],
                    hintText: 'How many bags',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PhysicalModel(
                    color: ColorConstants.kPrimaryColor,
                    elevation: 6.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: CustomeTextField(
                      hintText: 'Enter Emergency Contact No',
                      labelText: 'Emergency Contact No',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PhysicalModel(
                    color: ColorConstants.kPrimaryColor,
                    elevation: 6.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: CustomeTextField(
                      hintText: 'Enter Hospital Address',
                      labelText: 'Hospital Address',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PhysicalModel(
                    color: ColorConstants.kPrimaryColor,
                    elevation: 6.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: CustomeTextField(
                      hintText: 'Enter Hospital Under Thana',
                      labelText: 'Hospital Under Thana',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: _diseasesTextfield()),
                  SizedBox(
                    height: 30.0,
                  ),
                  Button(
                    title: "Submit",
                    onPress: () {
                      Get.toNamed('/bloodgroup-call')!;
                    },
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _diseasesTextfield() {
  return TextFormField(
    decoration: InputDecoration(
      hintText: "Type of Diseases",
      filled: true,
      fillColor: ColorConstants.kPrimaryColor,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: ColorConstants.kBlackColor),
      ),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.kBlackColor)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: ColorConstants.kPrimaryColor)),
    ),
    maxLines: 4,
  );
}
