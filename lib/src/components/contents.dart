import 'package:flutter/material.dart';
import 'package:flutter_webapp_chart/src/controller/screen_layout_controller.dart';

class Contents extends StatelessWidget {
  final ScreenSizeType screenSizeType;
  Contents(this.screenSizeType);
  @override
  Widget build(BuildContext context) {
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

Widget _mobileLayout() {
  return Container();
}

Widget _tabletLayout() {
  return Container();
}

Widget _desktopLayout() {
  return Container();
}
