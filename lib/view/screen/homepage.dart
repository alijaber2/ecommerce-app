// ignore_for_file: deprecated_member_use

import 'package:ecommerceapp/core/constant/appColors.dart';
import 'package:ecommerceapp/core/function/alertExitApp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: Colors.grey,
                )),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const WillPopScope(
        onWillPop: alertExitApp,
        child: Center(child:  Text("HomePage")),
      ),
    );
  }
}
