import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonAlertCancel extends GetView<OnBoardingControllerImp> {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAlertCancel(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        minWidth: Get.width / 4,
        onPressed: onPressed,
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 0),
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: const TextStyle(
              color: AppColors.blake, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
