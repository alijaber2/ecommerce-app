import 'package:ecommerceapp/controller/onBoarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFromAuth extends GetView<OnBoardingControllerImp> {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final String? Function(String?)? validator;
  final TextEditingController myController;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final void Function()? onTapIcon;
  const CustomTextFromAuth(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      required this.validator,
      required this.myController,
      this.keyboardType,
      this.isPassword,
      this.onTapIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: myController,
        keyboardType: keyboardType,
        obscureText: isPassword == null || isPassword == false ? false : true,
        validator: validator,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14),
          label: Container(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(labelText)),
          suffixIcon: InkWell(
            onTap: () {},
            child: Icon(iconData),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
