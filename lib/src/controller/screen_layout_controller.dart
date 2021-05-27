import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ScreenSizeType { MOBILE, TABLET, DESKTOP }

//디바이스별 리사이징
class ScreenLayoutController extends GetxController {
  //어디서든 검색가능
  static ScreenLayoutController get to => Get.find();
  //Reactive를 통한 상태관리
  //해상도값이 아니라 타입값에 변화가 발생하기 전까지 렌더링현상이 없다.
  //만약 reactive방식이아닌 update 방식이였다면 해상도값이 변화가발생할때마다 렌더링현상있음.
  Rx<ScreenSizeType> _screenType = ScreenSizeType.DESKTOP.obs;
  //기본값
  Rx<ScreenSizeType> type = ScreenSizeType.DESKTOP.obs;

  void builder(BoxConstraints constraints) {
    if (constraints.biggest.width <= 480) {
      _screenType(ScreenSizeType.MOBILE);
      //print("모바일");
    } else if (constraints.biggest.width > 480 &&
        constraints.biggest.width <= 768) {
      _screenType(ScreenSizeType.TABLET);
      //print("타블렛");
    } else {
      _screenType(ScreenSizeType.DESKTOP);
      // print("피씨");
    }
    // 현재 전체 사이즈값 확인
    // print(constraints.biggest.width);
  }

  //리사이징 될 때마다 업데이트되는거 방지
  //마지막값을 설정한 시간대로
  void onInit() {
    debounce(_screenType, (_) {
      type(_screenType.value);
    }, time: Duration(milliseconds: 200));
    super.onInit();
  }
}
