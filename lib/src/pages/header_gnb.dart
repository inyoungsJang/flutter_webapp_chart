import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HeaderGNB extends GetView<ScreenLayoutController> {
  ScreenSizeType screenSizeType;
  HeaderGNB(this.screenSizeType);

  Widget _mobileLayout() {
    return Container(
      //child: Text("모바일"),
      child: Column(
        children: [],
      ),
    );
  }

  Widget _tabletLayout() {
    return Container(
      color: Colors.blue,
      //child: Text("타블렛"),
      child: Row(
        children: [
          Text("타블렛"),
        ],
      ),
    );
  }

  Widget _desktopLayout() {
    return Container(
      color: Colors.amber,
      // child: Text("데스크탑"),
      child: Row(
        children: [Text("데스크탑")],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print("heard");
    // print(screenSizeType);
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
