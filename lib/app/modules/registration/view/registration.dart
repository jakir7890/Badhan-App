import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/global_widgets/button.dart';
import 'package:badhan_apps/app/modules/registration/quick_registration/view/quick_registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Spacer(),
          Image.asset('assets/images/logo.jpg'),
          const Spacer(),
          const Text(
            'REGISTRATION',
            style: TextStyle(
                color: ColorConstants.kSecondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const Spacer(),
          Button(
            title: 'Quick Registration'.toUpperCase(),
            onPress: () {
              Get.toNamed('/quickregi');
              ;
            },
          ),
          SizedBox(
            height: 10,
          ),
          Button(
            title: 'Full Registration'.toUpperCase(),
            onPress: () {
              Get.toNamed('/full-registration')!;
            },
          ),
          Spacer()
        ],
      ),
    ));
  }
}
