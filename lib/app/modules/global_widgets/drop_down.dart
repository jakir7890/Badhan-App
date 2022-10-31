import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeDropDown extends StatelessWidget {
  CustomeDropDown({Key? key, required this.listItem, required this.hintText}) : super(key: key);

  String? valuChose;
  String? hintText;

  List<String> listItem = [];

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: ColorConstants.kPrimaryColor,
      elevation: 6,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        constraints: BoxConstraints(minHeight: 45),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1)),
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  hintText: hintText,
                  border: InputBorder.none),

              // value: value,
              items: listItem
                  .map((valueItem) => DropdownMenuItem(
                      value: valueItem, child: Text(valueItem)))
                  .toList(),
              value: valuChose,
              onChanged: (newValue) {
                newValue = valuChose;
              }),
        ),
      ),
    );
  }
}
