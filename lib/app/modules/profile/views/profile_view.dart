import 'dart:ui';

import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage('assets/images/logo.jpg'),
                ),
                Text('Profile'),
                Icon(Icons.more_vert)
              ],
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstants.kPrimaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: ColorConstants.kSecondaryColor,
                        child: CircleAvatar(
                          foregroundImage: AssetImage('assets/images/person.png'),
                          radius: 40,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Md. Al Meraz",
                        style: TextStyle(
                            fontSize: 20,
                            color: ColorConstants.kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Blood Group O+",
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.whatsapp,
                            size: 40,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.message, size: 40, color: Colors.blue),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyListTile(
                        title: "Blood Group Name",
                      ),
                      MyListTile(
                        title: "Emergency Phone",
                      ),
                      MyListTile(
                        title: "E-mail",
                      ),
                      MyListTile(
                        title: "Current Address",
                      ),
                      MyListTile(
                        title: "Permanent Address",
                      ),
                      MyListTile(
                        title: "Profession",
                      ),
                      MyListTile(
                        title: "Report",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class MyListTile extends StatelessWidget {
  final String? title;
  const MyListTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.bloodtype_rounded,
        color: ColorConstants.kSecondaryColor,
      ),
      title: Text('$title'),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: ColorConstants.kSecondaryColor,
      ),
    );
  }
}
