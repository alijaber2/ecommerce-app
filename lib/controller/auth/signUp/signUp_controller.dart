// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:ecommerceapp/core/class/statusRequest.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/data/dataSource/remote/auth/signupData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerceapp/core/function/handlingDataController.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  SignupData signupData = SignupData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
   StatusRequest statusRequest = StatusRequest.none;
  List data = [];
  @override
  SignUp() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      
      statusRequest= StatusRequest.loading;update();
      var response = await signupData.postData( username.text, email.text, password.text, phone.text);
          print("============================Controller $response");
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success ) {
        if (response['status']  == "success") {
          //data.addAll(response['data']);
          Get.offNamed(AppRoutes.verifyCodeSignUp,arguments: {
            "email" : email.text
          });
        }else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ; 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("not valid***********");
    }
    // Get.delete<SignUpControllerImp>();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
