import 'package:ecommerceapp/core/constant/routes.dart';
import 'package:ecommerceapp/core/middleware/myMiddleware.dart';
import 'package:ecommerceapp/view/screen/OnBoarding.dart';
import 'package:ecommerceapp/view/screen/auth/forgetPassword/forgetPassword.dart';
import 'package:ecommerceapp/view/screen/auth/forgetPassword/resetPassword.dart';
import 'package:ecommerceapp/view/screen/auth/forgetPassword/successResetPassword.dart';
import 'package:ecommerceapp/view/screen/auth/forgetPassword/verifyCode.dart';
import 'package:ecommerceapp/view/screen/auth/login/login.dart';
import 'package:ecommerceapp/view/screen/auth/signup/signup.dart';
import 'package:ecommerceapp/view/screen/auth/signup/successSignup.dart';
import 'package:ecommerceapp/view/screen/auth/signup/verifyCodeSignUp.dart';
import 'package:ecommerceapp/view/screen/homepage.dart';
import 'package:ecommerceapp/view/screen/language.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    //========================start====================================
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),

  
  //========================Language====================================
   GetPage(name: AppRoutes.language, page: () => const Language()),

  //========================onBoarding====================================
   GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),


  //========================auth====================================
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signup, page: () => const SignUp()),
  GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoutes.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),


  //========================ForgetPassword====================================
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verifyCodeForgetPassword, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoutes.successResetPassword, page: () => const SuccessResetPassword()),

  //========================HomePage====================================
  GetPage(name: AppRoutes.homePage, page: () => const HomePage()),
];
