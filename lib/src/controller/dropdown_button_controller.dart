import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DropdownButtonController extends GetxController {
  RxInt index = 0.obs;
  void changeDropdownMenu(int itemIndex) {
    index(itemIndex);
  }
}
