// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/controller/auth/signUp/verifyCodeSignup_controller.dart';
import 'package:ecommerceapp/core/class/handlingDataView.dart';
import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/core/function/validInput.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextBodyAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextFromAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextTitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification Code",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey,
                )),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GetBuilder<VerifyCodeSignUpControllerImp>(
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
                  const CustomTextTitleAuth(textTitle: "Check Code"),
                  const SizedBox(
                    height: 10,
                  ),
                   CustomTextBodyAuth(
                    textBody:
                        "Please Enter The Digit Code Sent To ${controller.email}",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextFromAuth(
                    hintText: "Enter The Digit Code",
                    labelText: "Digit Code",
                    iconData: Icons.email_outlined,
                    myController: controller.verifyCode,
                    validator: (val) {
                      return validInput(val!, 6, 100, "digit");
                    },
                    keyboardType: TextInputType.number,
                  ),

         /* OtpTextField(
                    fieldWidth: 50.0,
                    borderRadius: BorderRadius.circular(20),
                    numberOfFields: 5,
                    borderColor: const Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                    // controller.goToSuccessSignUp(verificationCode);
                    }, // end onSubmit
                  ),*/
                  const SizedBox(height: 40),
                  InkWell(onTap: (){
                    //controller.reSend() ; 
                  },child: const Center(child: Text("Resend verify code" , style: TextStyle(color: AppColors.primaryColor , fontSize: 20 ),)),),

                  CustomButtonAuth(
                    text: "Check",
                    onPressed: () {
                      controller.goToSuccessSignUp();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
