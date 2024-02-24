// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:ecommerceapp/core/class/statusRequest.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/function/handlingDataController.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/dataSource/remote/auth/lOginData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  Login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
  MyServices myServices = Get.find();
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isPassword = true;

  @override
  Login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      print("============================Controller $response");
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          myServices.sharedPreferences.setString("id", response['data']['user_id'].toString());
          myServices.sharedPreferences.setString("usrename", response['data']['user_username']);
          myServices.sharedPreferences.setString("email", response['data']['user_email']);
          myServices.sharedPreferences.setString("phone", response['data']['user_phone'].toString());
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoutes.homePage);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
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
  goToSignUp() {
    Get.offNamed(AppRoutes.signup);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }

  ShowPassword() {
    isPassword = !isPassword;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}

