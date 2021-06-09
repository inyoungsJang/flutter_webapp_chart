import 'package:flutter/material.dart';

class MobileTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        children: [
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            onPressed: () {},
            child: Container(
              //color: Colors.blueAccent,
              child: Text("주식"),
            ),
          ),
          InkWell(
            mouseCursor: MaterialStateMouseCursor.clickable,
            onTap: () {},
            child: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
