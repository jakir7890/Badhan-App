import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/global_widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              onPress: () {},
            ),
            SizedBox(height: 10,),
            Button(
              title: 'LOGIN',
              onPress: () {},
            ),
            Spacer()
          ],
        ),
      ),
    ));
  }
}
