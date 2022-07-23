import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/model/word_model.dart';
import 'package:flutter_basic_tutorial/theme/app_theme.dart';
import 'package:flutter_basic_tutorial/tutorial/home.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(WordModelAdapter());
  await Hive.openBox<WordModel>('word');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemme.light,
      darkTheme: AppThemme.dark,
      home: Home(),
    );
  }
}
