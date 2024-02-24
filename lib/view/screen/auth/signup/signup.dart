// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/controller/auth/signUp/signUp_controller.dart';
import 'package:ecommerceapp/core/class/handlingDataView.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/core/function/alertExitApp.dart';
import 'package:ecommerceapp/core/function/validInput.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextBodyAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextFromAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextTitleAuth.dart';
import 'package:ecommerceapp/view/widget/auth/textSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SignUp",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: Colors.grey,
                  )),
          backgroundColor: AppColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
              builder: (controller) =>
               HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Form(
                    key: controller.formState,
                    child:controller.statusRequest==StatusRequest.loading ?
                    const Center(child: Text("Loading..."),):
                     ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: Column(children: [
                            const CustomTextTitleAuth(
                                textTitle: "Welcome Back"),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextBodyAuth(
                              textBody:
                                  "Sign Up With Your Email And Password OR Continue With Social Media",
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomTextFromAuth(
                              hintText: "Enter Username",
                              labelText: "Username",
                              iconData: Icons.person_outline,
                              myController: controller.username,
                              validator: (val) {
                                return validInput(val!, 3, 30, "username");
                              },
                              keyboardType: TextInputType.name,
                            ),
                            CustomTextFromAuth(
                              hintText: "Enter Your Email",
                              labelText: "Email",
                              iconData: Icons.email_outlined,
                              myController: controller.email,
                              validator: (val) {
                                return validInput(val!, 10, 100, "email");
                              },
                              keyboardType: TextInputType.emailAddress,
                            ),
                            CustomTextFromAuth(
                              hintText: "Enter Your Phone",
                              labelText: "Phone",
                              iconData: Icons.phone_outlined,
                              myController: controller.phone,
                              validator: (val) {
                                return validInput(val!, 11, 16, "phone");
                              },
                              keyboardType: TextInputType.phone,
                            ),
                            CustomTextFromAuth(
                              hintText: "Enter Your Password",
                              labelText: "Password",
                              iconData: Icons.lock_outlined,
                              myController: controller.password,
                              validator: (val) {
                                return validInput(val!, 8, 100, "password");
                              },
                              keyboardType: TextInputType.visiblePassword,
                            ),
                            CustomButtonAuth(
                              text: "Sign Up",
                              onPressed: () {
                                controller.SignUp();
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextSign(
                                textBody: "have an account ?",
                                namePage: " Login ",
                                onPressed: () {
                                  controller.goToLogin();
                                }),
                          ]),
                        ),
                      ],
                    ),
                  ))),
        )
        );
  }
}
