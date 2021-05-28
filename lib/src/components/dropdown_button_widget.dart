import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/controller/dropdown_button_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DropdownButtonWidget extends GetView<DropdownButtonController> {
  @override
  Widget build(BuildContext context) {
    //   return Obx(
    //     () => (DropdownButton(
    //   //    value: controller.index.value,
    //   value: controller.cu,
    //       onChanged: (int value) {
    //         controller.changeDropdownMenu(value);
    //       },
    //       items: [
    //         DropdownMenuItem(
    //           value: 0,
    //           child: Text("item1"),
    //         ),
    //         DropdownMenuItem(
    //           value: 1,
    //           child: Text("item2"),
    //         ),
    //       ],
    //     )),
    //   );
  }
}
