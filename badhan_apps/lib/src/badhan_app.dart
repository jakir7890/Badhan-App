import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BadhanApp extends StatelessWidget {
  
   BadhanApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Store',
      home: HomeScreen(),
    );
  }
}
