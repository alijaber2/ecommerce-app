// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  floatingActionButtonTheme:
  const FloatingActionButtonThemeData(backgroundColor: AppColors.primaryColor),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    titleTextStyle:const  TextStyle(
        color: AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontFamily: "PlayfairDisplay",
        fontSize: 25),
    backgroundColor: Colors.grey[50],
  ),
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColors.blake),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColors.blake),
      bodyText1: TextStyle(
          height: 2,
          color: AppColors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2: TextStyle(height: 2, color: AppColors.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColors.blake),
      headline2: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColors.blake),
      bodyText1: TextStyle(
          height: 2,
          color: AppColors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyText2: TextStyle(height: 2, color: AppColors.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
