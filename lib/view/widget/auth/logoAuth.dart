import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:ecommerceapp/core/constant/imageAsset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoAuth extends GetView<OnBoardingControllerImp> {
  const LogoAuth({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logo,
      height: 170,
    );
  }
}
