import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme.dart';

class MyInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  const MyInputField({
    Key? key,
    required this.title,
    required this.hint,
    this.controller,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: subHeadingStyle,
          ),
          Container(
              height: 50,
              margin: EdgeInsets.only(top: 5.0),
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    readOnly: widget == null ? false : true,
                    autofocus: false,
                    cursorColor:
                        Get.isDarkMode ? Colors.grey[100] : Colors.grey[700],
                    controller: controller,
                    style: subHeadingStyle,
                    decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: subTitleStyle,
                        focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: context.theme.canvasColor, width: 0)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: context.theme.canvasColor, width: 0))),
                  )
                  ),
                  widget == null? Container():Container(child: widget)
                ],
              )
          )
        ],
      ),
    );
  }
}
