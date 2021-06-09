import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_webapp_chart/src/components/dropdown_button_widget.dart';
import 'package:flutter_webapp_chart/src/components/screen_two.dart';
import 'package:flutter_webapp_chart/src/controller/dropdown_button_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DeskTopTop extends GetView<DropdownButtonController> {
//공통 마진

  // ScrollController _scrollController;

  // void initState() {
  //   super.initState();
  //   _scrollController = ScrollController()
  //     ..addListener(() {
  //       print("offset=${_scrollController.offset}");
  //     });
  // }

  // Widget bulid(BuildContext context) {
  //   return SingleChildScrollView(
  //     controller: _scrollController,
  //   );
  // }

  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }
// 공통 마진
  Widget _makeMargin(Widget widget) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: widget,
    );
  }

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
    // print(
    //   MediaQuery.of(context).size.width,
    // );
    return Container(
      // width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [Text("data")],
          ),
          Row(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Get.toNamed('/screentwo');
                        print("object");
                      },
                      child: Text("넘어가기")),
                  _makeMargin(
                    MaterialButton(
                      onPressed: () {
                        Get.toNamed("/screentwo");
                        print("넘어가자");
                      },
                      minWidth: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(width: 1.0, color: Colors.grey)),
                      child: Icon(
                        Icons.border_color,
                        size: 15,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/screentwo');
                      print(" ?");
                    },
                    child: _makeMargin(_makeButton(Icon(
                      Icons.border_color,
                      size: 15,
                    ))),
                  ),
                  DropdownButtonWidget(),
                  _makeMargin(_makeButton(Text(
                    "주식",
                    style: TextStyle(fontSize: 10),
                  ))),
                  _makeMargin(_makeButton(Icon(
                    Icons.search,
                    size: 15,
                  ))),
                  _makeMargin(_makeButton(Text(
                    "123456",
                    style: TextStyle(fontSize: 10),
                  ))),
                  Obx(() {
                    // Widget btnText = Container(child: Text(""));
                    switch (controller.currentItem.value) {
                      case DropDownMenu.m1:
                        return Text("신한지주");
                        break;
                      case DropDownMenu.m2:
                        return Text("wasda");
                        break;
                      case DropDownMenu.m3:
                        return Text("daddddta");
                        break;
                    }
                    return Container();
                  }),
                  _makeMargin(
                    Text(
                      "신한지주",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              //row2에 Expanded위젯을 사용하여 부모 Row의 자식 row1, row2를 사용하고 남은 width값을 row2가 차지함으로써 오른쪽 정렬이 가능하게됌
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _makeMargin(Text(
                      "조회시작일",
                      style: TextStyle(fontSize: 10),
                    )
                        // Icon(
                        //   Icons.calendar_today,
                        //   size: 15,
                        // ),
                        ),
                    _makeMargin(Text(
                      "조회갯수",
                      style: TextStyle(fontSize: 10),
                    )),
                    // _makeMargin(TextField(
                    //   decoration: InputDecoration(hintText: "sss"),
                    // )),

                    _makeMargin(SizedBox(
                      width: 60,
                      child: TextField(
                        style: TextStyle(fontSize: 10),
                        decoration: InputDecoration(hintText: "sdasda"),
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
