import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/blood_tab_controller.dart';

class BloodTabView extends GetView<BloodTabController> {
  const BloodTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset('assets/images/logo.jpg'),
              Spacer(),
              const Text(
                'Tab Your Required Blood Group',
                style: TextStyle(
                    color: ColorConstants.kSecondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleButton(
                    bloodGroup: 'A+',
                    onPress: () {
                      Get.toNamed('/patient-info');
                    },
                  ),
                  CircleButton(
                    bloodGroup: 'B+',
                    onPress: () {},
                  ),
                  CircleButton(
                    bloodGroup: 'AB+',
                    onPress: () {},
                  ),
                  CircleButton(
                    bloodGroup: 'O+',
                    onPress: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleButton(
                    bloodGroup: 'A-',
                    onPress: () {},
                  ),
                  CircleButton(
                    bloodGroup: 'B-',
                    onPress: () {},
                  ),
                  CircleButton(
                    bloodGroup: 'AB-',
                    onPress: () {},
                  ),
                  CircleButton(
                    bloodGroup: 'O-',
                    onPress: () {},
                  ),
                ],
              ),
              Spacer(),
              Text(
                'These services are free of cost, do not pay anyone!',
                style: TextStyle(
                    color: ColorConstants.kSecondaryColor, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.bloodGroup,
    required this.onPress,
  }) : super(key: key);

  final String bloodGroup;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorConstants.kSecondaryColor,
            minimumSize: Size(70, 70),
            shape: CircleBorder(
                side: BorderSide(width: 2, color: ColorConstants.kBlackColor))),
        onPressed: onPress,
        child: Text(bloodGroup));
  }
}
