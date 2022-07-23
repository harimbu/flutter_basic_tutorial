import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_basic_tutorial/model/student_model.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  Student? student;
  var isLoading = false.obs;

  @override
  void onInit() {
    getStudent();
    super.onInit();
  }

  void getStudent() async {
    try {
      isLoading(true);
      final jsonString = await rootBundle.loadString('assets/student.json');
      final jsonResponse = await jsonDecode(jsonString);
      student = Student.fromJson(jsonResponse);
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }
}
