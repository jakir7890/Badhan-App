import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  CustomeTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffix,
    this.myOnTap,
    this.dateController,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffix;
  final VoidCallback? myOnTap;

  TextEditingController? dateController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextFormField(
        controller: dateController,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorConstants.kPrimaryColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: ColorConstants.kBlackColor),
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstants.kBlackColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: ColorConstants.kPrimaryColor)),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffix,
        ),
        onTap: myOnTap,
      ),
    );
  }
}
