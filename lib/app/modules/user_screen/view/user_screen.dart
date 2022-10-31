import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/global_widgets/button.dart';
import 'package:badhan_apps/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);
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
            'একের রক্ত অন্যের জীবন \nরক্তই হোক আত্মার বাধন',
            style: TextStyle(
                color: ColorConstants.kSecondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          const Spacer(),
          Button(
            title: 'SIGN UP',
            onPress: () {
              Get.toNamed('/selectLang');
            },
          ),
          SizedBox(
            height: 10,
          ),
          Button(
            title: 'LOGIN',
            onPress: () {
              Get.toNamed('/blood-tab')!;
            },
          ),
          Spacer()
        ],
      ),
    ));
  }
}
