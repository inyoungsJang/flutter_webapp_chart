import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';
import 'package:get/get.dart';

class Contents extends GetView<ScreenLayoutController> {
  ScreenSizeType screenSizeType;
  Contents(this.screenSizeType);

  Widget _mobileLayout() {
    return Container(
      color: Colors.purple,
      child: Placeholder(
        fallbackHeight: 1,
      ),
    );
  }

  Widget _tabletLayout() {
    return Container(
      color: Colors.blue,
      child: Placeholder(
        fallbackHeight: 1,
      ),
    );
  }

  Widget _desktopLayout() {
    return Container(
      color: Colors.yellow,
      child: Placeholder(
        fallbackHeight: 1,
      ),
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
