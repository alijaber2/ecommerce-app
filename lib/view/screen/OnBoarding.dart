import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/view/widget/onBoarding/customButton.dart';
import 'package:ecommerceapp/view/widget/onBoarding/customSlider.dart';
import 'package:ecommerceapp/view/widget/onBoarding/dotController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          const Expanded(
            flex: 4,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotController(),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButtonOnBoarding(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
