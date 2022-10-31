import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MeRow extends StatelessWidget {
  const MeRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
          decoration: BoxDecoration(
              gradient: ColorConstants.kChatGradient,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Text(
            "Hi, Thanks for Contact us. Give us a few minutes. We will send you a donor contact number",
            style: TextStyle(fontSize: 14, color: ColorConstants.kPrimaryColor),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/logo.jpg'),
        ),
      ],
    );
  }
}
