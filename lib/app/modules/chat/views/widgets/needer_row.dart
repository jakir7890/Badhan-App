import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class NeederRow extends StatelessWidget {
  const NeederRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/images/person.png'),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
          decoration: BoxDecoration(
              color: ColorConstants.kGrey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Text(
            "Hello amr ekta help lagbe. amr cousin er jonno B+ Blood lagbe. PG Hospital a agami kal sokal 10 tai. Please help me",
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}

