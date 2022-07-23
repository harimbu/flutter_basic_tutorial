import 'package:flutter_basic_tutorial/controller/student_controller.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class JsonStudent extends StatelessWidget {
  const JsonStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StudentController());
    // final controller = Get.find<StudentController>();

    _builScreen() {
      return Center(
        child: controller.student != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${controller.student!.id}'),
                  Text('${controller.student!.name}'),
                  Text('${controller.student!.score}'),
                ],
              )
            : Container(),
      );
    }

    return DefaultLayout(
      body: Obx(() => controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : _builScreen()),
    );
  }
}
