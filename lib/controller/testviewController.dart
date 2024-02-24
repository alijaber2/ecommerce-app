import 'package:ecommerceapp/core/class/statusRequest.dart';
import 'package:ecommerceapp/core/function/handlingDataController.dart';
import 'package:ecommerceapp/data/dataSource/remote/testViewData.dart';
import 'package:get/get.dart';

class testViewController extends GetxController {
  TestViewData testViewData = TestViewData(Get.find());

  List data = [];
  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testViewData.getData();
    print("============================Controller $response");
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } 
    }
    update();
  }

    @override
  void onInit() {
   getData();
    super.onInit();
  }
}
