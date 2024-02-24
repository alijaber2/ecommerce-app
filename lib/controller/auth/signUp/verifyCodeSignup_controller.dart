// ignore_for_file: avoid_print

import 'package:ecommerceapp/core/class/statusRequest.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/function/handlingDataController.dart';
import 'package:ecommerceapp/data/dataSource/remote/auth/verifyCodeSignupData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignupData verifyCodeSignupData = VerifyCodeSignupData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController verifyCode;
  late String email;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response =
          await verifyCodeSignupData.postData(email, verifyCode.text);
      print("============================Controller $response");
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.toNamed(AppRoutes.successSignUp);
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
    email = Get.arguments['email'];
    verifyCode = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    verifyCode.dispose();
    super.dispose();
  }
}
