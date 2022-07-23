import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_basic_tutorial/model/shape_model.dart';
import 'package:get/get.dart';

class ShapeController extends GetxController {
  var isLoading = false.obs;
  Shape? shape;

  @override
  void onInit() {
    super.onInit();
    getShape();
  }

  void getShape() async {
    try {
      isLoading(true);
      final jsonString = await rootBundle.loadString('assets/shaped.json');
      final jsonRespones = await jsonDecode(jsonString);
      shape = Shape.fromJson(jsonRespones);
      print(shape!.property!.breadth);
    } catch (e) {
      print('${e}');
    } finally {
      isLoading(false);
    }
  }
}
