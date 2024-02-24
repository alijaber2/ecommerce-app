// ignore_for_file: deprecated_member_use, file_names

import 'package:ecommerceapp/controller/auth/forgetPassword/forgetPassword_controller.dart';
import 'package:ecommerceapp/core/class/handlingDataView.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/core/function/validInput.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextBodyAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextFromAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextTitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey,
                )),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) =>
           HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Form(
                    key: controller.formState,
                    child: ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: Column(children: [
                            const CustomTextTitleAuth(textTitle: "Check Email"),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextBodyAuth(
                              textBody:
                                  "Please Enter Your Email Address To Receive a Verification Code",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextFromAuth(
                              hintText: "Enter Your Email",
                              labelText: "Email",
                              iconData: Icons.email_outlined,
                              myController: controller.email,
                              validator: (val) {
                                return validInput(val!, 8, 100, "email");
                              },
                              keyboardType: TextInputType.emailAddress,
                            ),
                            CustomButtonAuth(
                              text: "Check",
                              onPressed: () {
                                controller.checkEmail();
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ]),
                        ),
                      ],
                    ),
                  )),
      ),
    );
  }
}
