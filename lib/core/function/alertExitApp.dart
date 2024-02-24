import 'dart:io';
import 'package:ecommerceapp/view/widget/alert/customButtonAlertCancel.dart';
import 'package:ecommerceapp/view/widget/alert/customButtonAlertExitApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "Alert",
    middleText: "Do you want to exit the app",
    confirm: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButtonAlertCancel(
            text: "cancel",
            onPressed: () {
              Get.back();
            }),
        const SizedBox(
          width: 5,
        ),
        CustomButtonAlertExitApp(
          text: "Exit",
          onPressed: () {
            exit(0);
          },
        ),
      ],
    ),
  );
  return Future.value(true);
}
