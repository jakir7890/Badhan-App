import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/chat/views/widgets/me_row.dart';
import 'package:badhan_apps/app/modules/chat/views/widgets/message_sender.dart';
import 'package:badhan_apps/app/modules/chat/views/widgets/needer_row.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: ColorConstants.kPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: ScrollConfiguration(
                  behavior: MaterialScrollBehavior().copyWith(overscroll: false),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Shah Alam need ',
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: ColorConstants.kBlackColor,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: 'B+',
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  color: ColorConstants.kSecondaryColor,
                                )),
                            TextSpan(
                              text: ' Blood',
                              style: const TextStyle(
                                fontSize: 20.0,
                                color: ColorConstants.kBlackColor,
                              ),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Divider(
                        thickness: 1.8,
                        color: ColorConstants.kGrey,
                        indent: 40,
                        endIndent: 40,
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      NeederRow(),
                      SizedBox(
                        height: 10,
                      ),
                      MeRow(),
                      SizedBox(
                        height: 10,
                      ),
                      NeederRow(),
                      SizedBox(
                        height: 10,
                      ),
                      MeRow(),
                    ],
                  ),
                )),
          ),
        ),
        MessageSender(),
      ],
    );
  }
}
