import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MessageSender extends StatelessWidget {
  const MessageSender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 15),
      height: 50,
      color: ColorConstants.kPrimaryColor,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mic,
              color: ColorConstants.kSecondaryColor,
              size: 30,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                ],
              ),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Aa", border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          CircleAvatar(
            backgroundColor: ColorConstants.kSecondaryColor,
            foregroundColor: ColorConstants.kPrimaryColor,
            child: Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
