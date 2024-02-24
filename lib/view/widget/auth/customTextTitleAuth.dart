// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextTitleAuth extends GetView<OnBoardingControllerImp> {
  final String textTitle;
  const CustomTextTitleAuth({Key? key, required this.textTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      textTitle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
