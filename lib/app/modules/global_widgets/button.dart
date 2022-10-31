import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.title, required this.onPress})
      : super(key: key);
  final String? title;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50.0,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          primary: ColorConstants.kSecondaryColor,
          side: BorderSide(
            color: ColorConstants.kSecondaryColor,
            style: BorderStyle.solid,
            width: 1.8,
          ),
        ),
        onPressed: onPress,
        child: Text(
          '$title',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
