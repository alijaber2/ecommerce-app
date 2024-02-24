// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:ecommerceapp/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingModelList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 0,
                ),
                Image.asset(
                  onBoardingModelList[i].image!,
                  // width: 220,
                  height: Get.width / 1.3,
                  //fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(onBoardingModelList[i].title!,
                    style: Theme.of(context).textTheme.headline1),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(onBoardingModelList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ));
  }
}
