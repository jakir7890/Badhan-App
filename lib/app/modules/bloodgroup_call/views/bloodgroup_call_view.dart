import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/blood_tab/views/blood_tab_view.dart';
import 'package:badhan_apps/app/modules/bloodgroup_call/views/widgets/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bloodgroup_call_controller.dart';

class BloodgroupCallView extends GetView<BloodgroupCallController> {
  const BloodgroupCallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool agree = false;
    void _doSomething() {
      showDialog(
          context: context, builder: (BuildContext context) => PhoneDialog());
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "Blood Group",
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
          CustomRow(
            onPressed: agree ? null : _doSomething,
          ),
          SizedBox(
            height: 10,
          ),
          CustomRow(
            onPressed: agree ? null : _doSomething,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(
            height: 10,
          ),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
          SizedBox(height: 10),
          CustomRow(
            onPressed: agree ? _doSomething : null,
          ),
        ],
      ),
    );
  }
}

class CustomRow extends StatefulWidget {
  const CustomRow({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 45,
              width: Get.width * 0.65,
              child: TextFormField(
                readOnly: true,
                enabled: false,
                decoration: InputDecoration(
                  hintText: "Mr. Xyz",
                  filled: true,
                  fillColor: ColorConstants.kPrimaryColor,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2, color: ColorConstants.kBlackColor),
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorConstants.kBlackColor)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide:
                          BorderSide(color: ColorConstants.kPrimaryColor)),
                ),
              )),
          Container(
            width: 50,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorConstants.kSecondaryColor,
                  onSurface: ColorConstants.kSecondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: widget.onPressed,
              child: Center(child: Icon(Icons.phone_in_talk)),
            ),
          )
        ],
      ),
    );
  }
}
