// ignore_for_file: dead_code, avoid_print

import 'dart:convert';
import 'package:ecommerceapp/core/class/statusrequest.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      //if (await checkInternet())
      if (true) {
        var response = await http.post(Uri.parse(linkUrl), body: data);
        print(response.statusCode);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print(responseBody);

          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offLineFailure);
      }
    } catch (ex) {
      print(ex);
      return const Left(StatusRequest.serverException);
    }
  }
}
