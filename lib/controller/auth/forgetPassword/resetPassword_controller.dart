// ignore_for_file: avoid_print

import 'package:ecommerceapp/core/class/statusRequest.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/function/handlingDataController.dart';
import 'package:ecommerceapp/data/dataSource/remote/forgetPassword/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  ResetPasswordData resetPasswordData =ResetPasswordData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;
  late String email;
  @override

  @override
  resetPassword()async {
    var formData = formState.currentState;
    if (formData!.validate()) {

      if(password.text != repassword.text) {
       return Get.defaultDialog(
              title: "ُWarning", middleText: "Password Not Match");
      } else{
        statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email,password.text);
      print("============================Controller $response");
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.toNamed(AppRoutes.successResetPassword);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Try Again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
      print(" valid***********");
      }
    } else {
      print("not valid***********");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
