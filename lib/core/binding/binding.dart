import 'package:ecommerceapp/controller/auth/forgetPassword/forgetPassword_controller.dart';
import 'package:ecommerceapp/controller/auth/forgetPassword/resetPassword_controller.dart';
import 'package:ecommerceapp/controller/auth/forgetPassword/verifyCode_controller.dart';
import 'package:ecommerceapp/controller/auth/login/login_controller.dart';
import 'package:ecommerceapp/controller/auth/signUp/signUp_controller.dart';
import 'package:ecommerceapp/controller/auth/signUp/verifyCodeSignup_controller.dart';
import 'package:ecommerceapp/core/class/crud.dart';
import 'package:get/get.dart';

class myBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.lazyPut(() => VerifyCodeSignUpControllerImp(), fenix: true);
    Get.lazyPut(() => ForgetPasswordControllerImp(), fenix: true);
    Get.lazyPut(() => VerifyCodeControllerImp(), fenix: true);
    Get.lazyPut(() => ResetPasswordControllerImp(), fenix: true);
    //Get.lazyPut(() => Crud(), fenix: true);
    Get.put(Crud()) ;
  }
}
