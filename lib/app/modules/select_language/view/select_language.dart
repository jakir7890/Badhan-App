import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/global_widgets/button.dart';
import 'package:badhan_apps/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset('assets/images/logo.jpg'),
              const Spacer(),
              const Text(
                'Select Your Language',
                style: TextStyle(
                    color: ColorConstants.kSecondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              const Spacer(),
              Button(
                title: 'ENGLISH',
                onPress: () {
                  Get.toNamed(Routes.Register);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Button(
                title: 'বাংলা',
                onPress: () {
                  Get.toNamed('/register');
                },
              ),
              Spacer()
            ],
          ),
        ));
  }
}
