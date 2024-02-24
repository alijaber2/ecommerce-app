// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/controller/auth/forgetPassword/resetPassword_controller.dart';
import 'package:ecommerceapp/core/class/handlingDataView.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/core/function/validInput.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextBodyAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextFromAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextTitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey,
                )),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) => 
  HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget:
        Form(
          key: controller.formState,
          child: ListView(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Column(children: [
                  const CustomTextTitleAuth(textTitle: "New Password"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextBodyAuth(
                    textBody: "Please Enter New Password",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFromAuth(
                    hintText: "Enter Your Password",
                    labelText: "Your Password",
                    iconData: Icons.email_outlined,
                    myController: controller.password,
                    validator: (val) {
                      return validInput(val!, 8, 100, "password");
                    },
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  CustomTextFromAuth(
                    hintText: "Re Enter Your Password",
                    labelText: "Re Your Password",
                    iconData: Icons.email_outlined,
                    myController: controller.repassword,
                    validator: (val) {
                      return validInput(val!, 8, 100, "password");
                    },
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  CustomButtonAuth(
                    text: "Save",
                    onPressed: () {
                      controller.resetPassword();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
              ),
            ],
          ),
        ),)
      ),
    );
  }
}
