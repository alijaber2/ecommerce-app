import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextSign extends GetView<OnBoardingControllerImp> {
  final String namePage;
  final String textBody;
  final void Function()? onPressed;
  const TextSign(
      {Key? key,
      required this.namePage,
      required this.textBody,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textBody),
        InkWell(
          onTap: onPressed,
          child: Text(
            namePage,
            style: const TextStyle(
                color: AppColors.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
