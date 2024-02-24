import 'package:ecommerceapp/core/class/crud.dart';
import 'package:ecommerceapp/core/constant/appLink.dart';
class TestViewData{
  Crud crud;
  TestViewData(this.crud);
  
  getData()async{
    var response=await crud.postData(AppLink.test,{});
    return response.fold((l) => l, (r) => r);
  }
}