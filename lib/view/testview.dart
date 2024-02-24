import 'package:ecommerceapp/controller/testViewController.dart';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(testViewController());
    return Scaffold(
      body: GetBuilder<testViewController>(builder: (controller){
        if(controller.statusRequest==StatusRequest.success){
          return ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context,index){
              return Text("${controller.data}");
            },
            );
        }
        else{
          return const Center(child: Text("Loading..."),);
        }
      }),
    );
  }
}
