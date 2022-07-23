import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/controller/photo_controller.dart';
import 'package:flutter_basic_tutorial/layout/default_layout.dart';
import 'package:get/get.dart';

class Photo extends StatelessWidget {
  final controller = Get.put(PhotoController());

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : _screenBuild(),
      ),
    );
  }

  _screenBuild() {
    return ListView.builder(
      itemCount: controller.photosList!.length,
      itemBuilder: (context, index) =>
          Text('${controller.photosList![index].title}'),
    );
  }
}
