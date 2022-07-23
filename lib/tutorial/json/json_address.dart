import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/controller/address_controller.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:get/get.dart';

class JsonAddress extends StatelessWidget {
  JsonAddress({Key? key}) : super(key: key);
  final controller = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : _buildScreen(),
      ),
    );
  }

  _buildScreen() {
    return Center(
      child: controller.address != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${controller.address!.city}'),
                Text('${controller.address!.streets![0]}'),
                Text('${controller.address!.streets![1]}'),
              ],
            )
          : Container(),
    );
  }
}
