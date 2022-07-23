import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_basic_tutorial/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = false.obs;
  Product? product;

  @override
  void onInit() {
    super.onInit();
    getProduct();
  }

  void getProduct() async {
    try {
      isLoading(true);
      final jsonString = await rootBundle.loadString('assets/product.json');
      final jsonResponse = await jsonDecode(jsonString);
      product = Product.fromJson(jsonResponse);
    } catch (e) {
      print('${e}');
    } finally {
      isLoading(false);
    }
  }
}
