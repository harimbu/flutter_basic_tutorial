import 'package:flutter_basic_tutorial/controller/shape_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';

class Shape extends StatelessWidget {
  final controller = Get.put(ShapeController());
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${controller.shape!.shapeName}'),
                    Text('${controller.shape!.property!.width}'),
                    Text('${controller.shape!.property!.breadth}'),
                  ],
                ),
              ),
      ),
    );
  }
}
