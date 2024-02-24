import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      height: 40,
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        color: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        child: Text(
          "Continue".tr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
