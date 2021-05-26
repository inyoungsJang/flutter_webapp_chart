import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DefaultTemplete extends GetView<ScreenLayoutController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Placeholder(
        fallbackHeight: 100,
      ),
    );
  }
}
