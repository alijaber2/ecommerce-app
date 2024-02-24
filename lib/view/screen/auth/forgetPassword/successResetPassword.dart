// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextBodyAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextTitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Success Sign Up",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey,
                )),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(children: [
          const Icon(
            Icons.check_circle_outline,
            color: AppColors.primaryColor,
            size: 200,
          ),
          const CustomTextTitleAuth(textTitle: "Success Sign Up"),
          const SizedBox(
            height: 10,
          ),
          const CustomTextBodyAuth(
            textBody: "Please Enter The Digit Code Sent To alijaber@gmail.com",
          ),
          const Spacer(),
          CustomButtonAuth(
            text: "Go To Login",
            onPressed: () {
              Get.offNamed(AppRoutes.login);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
