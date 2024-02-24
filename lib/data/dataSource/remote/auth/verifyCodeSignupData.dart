import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/constant/appLink.dart';
class VerifyCodeSignupData{
  Crud crud;
  VerifyCodeSignupData(this.crud);
  
  postData(String email,String verifyCode)async{
    var response=await crud.postData(AppLink.verifyCodeSignup,{
      "email" : email,
      "verifyCode" : verifyCode ,
    });
    return response.fold((l) => l, (r) => r);
  }
}