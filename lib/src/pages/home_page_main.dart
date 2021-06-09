import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/components/contents.dart';
import 'package:flutter_webapp_chart/src/components/footer.dart';
import 'package:flutter_webapp_chart/src/components/header.dart';
import 'package:flutter_webapp_chart/src/components/screen_one.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';
import 'package:flutter_webapp_chart/src/pages/header_gnb.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePageMain extends StatelessWidget {
  HomePageMain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
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
                      HeaderGNB(ScreenLayoutController.to.type.value),
                      Expanded(
                          child: Container(
                              child: ScreenOne(
                                  ScreenLayoutController.to.type.value)))
                      //   Header(ScreenLayoutController.to.type.value),
                      //   Container(
                      //     height: 1000,
                      //     child: Contents(ScreenLayoutController.to.type.value),
                      //   ),
                      //   Fotter(ScreenLayoutController.to.type.value),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
