// ignore_for_file: avoid_print

import 'package:ecommerceapp/core/class/statusRequest.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/function/handlingDataController.dart';
import 'package:ecommerceapp/data/dataSource/remote/forgetPassword/verifyCodeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData = VerifyCodeForgetPasswordData(Get.find());
  StatusRequest statusRequest= StatusRequest.none;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController verifyCode;
  late String email;

  @override
  checkCode()async {
    var formData = formState.currentState;
    if (formData!.validate()) {

      statusRequest = StatusRequest.loading;
      update();
      var response = await verifyCodeForgetPasswordData.postData(email,verifyCode.text);
      print("============================Controller $response");
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.toNamed(AppRoutes.resetPassword,arguments: {
            "email" : email
        });
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Verification Code is Invalid");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      print(" valid***********");
    } else {
      print("not valid***********");
    }
  }

  @override
  void onInit() {
    verifyCode = TextEditingController();
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    verifyCode.dispose();
    super.dispose();
  }
}
