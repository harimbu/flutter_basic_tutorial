import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_basic_tutorial/model/address_model.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  Address? address;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getAddress();
  }

  void getAddress() async {
    try {
      isLoading(true);
      final jsonString = await rootBundle.loadString('assets/address.json');
      final jsonResponse = await jsonDecode(jsonString);
      address = Address.fromJson(jsonResponse);
    } catch (e) {
      print('${e}');
    } finally {
      isLoading(false);
    }
  }
}
