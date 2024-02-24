// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextBodyAuth extends GetView<OnBoardingControllerImp> {
  final String textBody;
  const CustomTextBodyAuth({Key? key, required this.textBody})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        textBody,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
