import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonLan extends GetView<OnBoardingControllerImp> {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLan(
      {Key? key, required this.textButton, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.primaryColor,
        child: Text(
          textButton,
          style:  const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
