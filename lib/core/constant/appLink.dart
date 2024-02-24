class AppLink {
 static const String server = "http://192.168.0.156:8080/ecommerceBackend"; 

//========================auth=============================//
 static const String signUp = "$server/auth/signup.php"; 
 static const String verifyCodeSignup = "$server/auth/verifyCode.php"; 
 static const String login = "$server/auth/login.php"; 

//========================ForgetPassword=============================//
 static const String checkEmail = "$server/forgetpassword/checkemail.php"; 
 static const String verifyCodeForgetPassword = "$server/forgetpassword/verifyCode.php"; 
 static const String resetPassword = "$server/forgetpassword/resetpassword.php"; 




//test=============================
 static const String test = "$server/test.php"; 
}
