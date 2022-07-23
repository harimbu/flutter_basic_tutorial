import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_basic_tutorial/model/photo_model.dart';
import 'package:get/get.dart';

class PhotoController extends GetxController {
  var isLoading = false.obs;
  var photosList;

  @override
  void onInit() {
    super.onInit();
    getPhoto();
  }

  void getPhoto() async {
    try {
      isLoading(true);
      final jsonString = await rootBundle.loadString('assets/photo.json');
      final jsonResponse = await jsonDecode(jsonString);
      photosList = jsonResponse.map((json) => Photo.fromJson(json)).toList();
    } catch (e) {
      print('${e}');
    } finally {
      isLoading(false);
    }
  }
}
