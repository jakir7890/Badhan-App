import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ChapAppbar extends StatelessWidget implements PreferredSize {
  ChapAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/logo.jpg'),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Live Chat with BADHAN Team",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: ColorConstants.kBlackColor,
                    radius: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person.png'),
                    radius: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.kBlackColor,
                    radius: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.kPrimaryColor,
                    child: Text(
                      "3+",
                      style: TextStyle(
                          fontSize: 12, color: ColorConstants.kBlackColor),
                    ),
                    radius: 10,
                  ),
                ],
              )
            ],
          ),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70.0);
}
