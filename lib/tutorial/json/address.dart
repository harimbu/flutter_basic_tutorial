import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/controller/address_controller.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:get/get.dart';

class Address extends StatelessWidget {
  final controller = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Obx(() => controller.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${controller.address!.city}'),
                  Text('${controller.address!.streets![0]}'),
                  Text('${controller.address!.streets![1]}'),
                ],
              ),
            )),
    );
  }
}
