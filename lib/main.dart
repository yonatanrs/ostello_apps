import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostello_apps/controllers/home_controller.dart';
import 'package:ostello_apps/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Initialize HomeController here
    Get.put(HomeController());
    return GetMaterialApp(
      title: 'Ostello App',
      home: HomeView(),
    );
  }
}
