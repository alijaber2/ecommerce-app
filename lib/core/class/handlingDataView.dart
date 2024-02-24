import 'package:ecommerceapp/core/class/statusRequest.dart';
import 'package:flutter/material.dart';
class HandlingDataView  extends StatelessWidget{
  final StatusRequest statusRequest ;
  final Widget widget;
  const HandlingDataView({Key? key, required this.statusRequest, required this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
    statusRequest== StatusRequest.loading ?const Center(child: Text("Loading..."),):
    statusRequest== StatusRequest.offLineFailure ?const Center(child: Text("OffLine Failure"),):
    statusRequest== StatusRequest.serverFailure ?const Center(child: Text("Server Failure"),):
    statusRequest== StatusRequest.failure ?const Center(child: Text("No Data"),):
    widget;
  }

}

class HandlingDataRequest  extends StatelessWidget{
  final StatusRequest statusRequest ;
  final Widget widget;
  const HandlingDataRequest({Key? key, required this.statusRequest, required this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
    statusRequest== StatusRequest.loading ?const Center(child: Text("Loading..."),):
    statusRequest== StatusRequest.offLineFailure ?const Center(child: Text("OffLine Failure"),):
    statusRequest== StatusRequest.serverFailure ?const Center(child: Text("Server Failure"),):
    widget;
  }

}