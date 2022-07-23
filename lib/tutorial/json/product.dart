import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/controller/product_controller.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Obx(() => controller.isLoading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${controller.product!.id}'),
                  Text('${controller.product!.name}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${controller.product!.images![0].id}'),
                      Text(' - '),
                      Text('${controller.product!.images![0].imageName}'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${controller.product!.images![1].id}'),
                      Text(' - '),
                      Text('${controller.product!.images![1].imageName}'),
                    ],
                  ),
                ],
              ),
            )),
    );
  }
}
