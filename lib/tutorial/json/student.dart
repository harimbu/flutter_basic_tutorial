import 'package:flutter_basic_tutorial/controller/student_controller.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Student extends StatelessWidget {
  final controller = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Obx(() => controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text('${controller.isLoading}'),
                  Text('${controller.student!.id}'),
                  Text('${controller.student!.name}'),
                  Text('${controller.student!.score}'),
                ],
              ),
            )),
    );
  }
}
