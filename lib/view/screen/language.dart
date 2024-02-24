// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/localization/changeLocal.dart';
import 'package:ecommerceapp/view/widget/Language/customButtonLan.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Choose Language".tr,
                  style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 20,
              ),
              CustomButtonLan(
                  textButton: "ar",
                  onPressed: () {
                    controller.changeLanguage("ar");
                    Get.toNamed(AppRoutes.onBoarding);
                  }),
              CustomButtonLan(
                  textButton: "en",
                  onPressed: () {
                    controller.changeLanguage("en");
                    Get.toNamed(AppRoutes.onBoarding);
                  }),
            ],
          )),
    );
  }
}
