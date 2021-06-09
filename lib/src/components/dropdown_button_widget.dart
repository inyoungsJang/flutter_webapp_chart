import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/controller/dropdown_button_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DropdownButtonWidget extends GetView<DropdownButtonController> {
  final bool isExpanded;
  DropdownButtonWidget({Key key, this.isExpanded = false}) : super(key: key);

  Widget _makeButton(Widget widget) {
    return MaterialButton(
      onPressed: () {},
      minWidth: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(width: 1.0, color: Colors.grey)),
      child: widget,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _makeButton(
        DropdownButton(
          value: controller.currentItem.value.index,
          onChanged: (int value) {
            controller.changeDropDownMenu(value);
          },
          underline: Container(padding: const EdgeInsets.all(0)),
          isExpanded: isExpanded,
          items: DropDownMenu.values
              .map(
                (menu) => DropdownMenuItem(
                  value: menu.index,
                  child: Text(
                    menu.name,
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
