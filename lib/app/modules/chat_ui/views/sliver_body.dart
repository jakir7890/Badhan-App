import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliverBody extends StatelessWidget {
  const SliverBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          padding: EdgeInsets.all(20),
          height: 1000,
          decoration: BoxDecoration(
              color: ColorConstants.kPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50.0))),
          child: Column(
            children: [
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              CustomRow(),
              Divider(
                color: Colors.redAccent,
                height: 3,
                thickness: 2,
                indent: 50,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed('/profile')!;
          },
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/person.png'),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed('/chat')!;
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Md. Al Meraz"),
              Text(
                "Rogir Obosta Serious....",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, gradient: ColorConstants.kGradient),
              child: Center(
                  child: Text(
                '2',
                style: TextStyle(color: ColorConstants.kPrimaryColor),
              )),
            ),
            Text('01:00 PM', style: TextStyle(fontSize: 10))
          ],
        ),
      ],
    );
  }
}
