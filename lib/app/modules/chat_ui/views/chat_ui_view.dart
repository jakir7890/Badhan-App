import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/chat_ui/views/sliver_appbar.dart';
import 'package:badhan_apps/app/modules/chat_ui/views/sliver_body.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_ui_controller.dart';

class ChatUiView extends GetView<ChatUiController> {
  const ChatUiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: [
                MySliverAppbar(),
                // Other Sliver Widgets
                SliverBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

