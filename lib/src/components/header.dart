import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Header extends GetView<ScreenLayoutController> {
  ScreenSizeType screenSizeType;
  Header(this.screenSizeType);

  Widget _mobileLayout() {
    return Container(
      child: Text("모바일"),
    );
  }

  Widget _tabletLayout() {
    return Container(
      child: Text("타블렛"),
    );
  }

  Widget _desktopLayout() {
    return Container(
      child: Text("데스크탑"),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print("heard");
    print(screenSizeType);
    switch (screenSizeType) {
      case ScreenSizeType.MOBILE:
        return _mobileLayout();
        break;
      case ScreenSizeType.TABLET:
        return _tabletLayout();
        break;
      case ScreenSizeType.DESKTOP:
        return _desktopLayout();
        break;
    }
  }
}
