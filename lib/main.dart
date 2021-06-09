import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/components/dropdown_button_widget.dart';
import 'package:flutter_webapp_chart/src/components/screen_one.dart';
import 'package:flutter_webapp_chart/src/components/screen_two.dart';
import 'package:flutter_webapp_chart/src/controller/dropdown_button_controller.dart';
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
        Get.put(DropdownButtonController());
      }),
      home: HomePageMain(),
      getPages: [
        GetPage(
            name: '/',
            page: () => ScreenOne(ScreenLayoutController.to.type.value)),
        GetPage(name: '/screentwo', page: () => ScreenTwo()),
        //GetPage(name: '/three', page: ScreenThree())
      ],
    );
  }
}

class WebAppChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
