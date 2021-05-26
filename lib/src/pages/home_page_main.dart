import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/components/contents.dart';
import 'package:flutter_webapp_chart/src/components/footer.dart';
import 'package:flutter_webapp_chart/src/components/header.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// 처음화면
class HomePageMain extends StatelessWidget {
  HomePageMain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            ScreenLayoutController.to.builder(constraints);
            return Container();
          },
        ),
        Obx(
          () => Container(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1280),
              child: Column(
                children: [
                  Header(ScreenLayoutController.to.type.value),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
// Obx((

// )=> Get.find<ScreenLayoutController>().type.value)

// Header(ScreenLayoutController.to.type.value),
// Contents(ScreenLayoutController.to.type.value),
// Footer(),
