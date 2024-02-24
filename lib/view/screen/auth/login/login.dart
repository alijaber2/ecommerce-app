import 'package:ecommerceapp/controller/auth/login/login_controller.dart';
import 'package:ecommerceapp/core/class/handlingDataView.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/core/function/alertExitApp.dart';
import 'package:ecommerceapp/core/function/validInput.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextBodyAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextFromAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextTitleAuth.dart';
import 'package:ecommerceapp/view/widget/auth/logoAuth.dart';
import 'package:ecommerceapp/view/widget/auth/textSignUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey,
                )),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(builder: (controller) => 
          HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Form(
          key: controller.formState,
          child: ListView(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Column(children: [
                  const LogoAuth(),
                  const CustomTextTitleAuth(textTitle: "Welcome Back"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextBodyAuth(
                    textBody:
                        "Login With Your Email And Password OR Continue With Social Media",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFromAuth(
                    hintText: "Enter Yuor Email",
                    labelText: "Email",
                    iconData: Icons.email_outlined,
                    myController: controller.email,
                    validator: (val) {
                      return validInput(val!, 10, 100, "email");
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                  GetBuilder<LoginControllerImp>(
                      init: LoginControllerImp(),
                      builder: (controller) => CustomTextFromAuth(
                            hintText: "Enter Your Password",
                            labelText: "Password",
                            iconData: Icons.lock_outlined,
                            myController: controller.password,
                            validator: (val) {
                              return validInput(val!, 8, 100, "password");
                            },
                            keyboardType: TextInputType.visiblePassword,
                            isPassword: controller.isPassword,
                            onTapIcon: () {
                              controller.ShowPassword();
                            },
                          )),
                  SizedBox(
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {
                        controller.goToForgetPassword();
                      },
                      child: const Text(
                        "Forget Password",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  CustomButtonAuth(
                    text: "Login",
                    onPressed: () {
                      controller.Login();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextSign(
                      textBody: "Don't have an account ?",
                      namePage: " Sign Up ",
                      onPressed: () {
                        controller.goToSignUp();
                      }),
                ]),
              ),
            ],
          ),
        ),),
   
        ),
      ),
    );
  }
}
