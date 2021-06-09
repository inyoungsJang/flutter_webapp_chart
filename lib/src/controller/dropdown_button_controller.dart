import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

enum DropDownMenu { m1, m2, m3 }

extension DropDownMenuExtenstion on DropDownMenu {
  String get name {
    switch (this) {
      case DropDownMenu.m1:
        return "주식";
      case DropDownMenu.m2:
        return "지수";
      case DropDownMenu.m3:
        return "ELM";
    }
  }
}

class DropdownButtonController extends GetxController {
  static DropdownButtonController get to => Get.find();
  Rx<DropDownMenu> currentItem = DropDownMenu.m1.obs;

  void changeDropDownMenu(int itemIndex) {
    var selectedItem =
        DropDownMenu.values.where((menu) => menu.index == itemIndex).first;
    currentItem(selectedItem);
  }
}
