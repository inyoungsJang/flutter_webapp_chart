import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_chart/src/pages/home_page_main.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(ScreenLayoutController());
      }),
      home: HomePageMain(),
    );
  }
}

class WebAppChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
