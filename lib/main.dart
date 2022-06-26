import 'package:flutter/material.dart';
import 'package:flutter_basic_tutorial/tutorial/home_screen.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('setting');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final box = Hive.box('setting');

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('setting').listenable(),
      builder: (context, box, widget) {
        var darkMode = Hive.box('setting').get('darkMode', defaultValue: false);

        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              elevation: 0,
            ),
          ),
          home: HomeScreen(),
        );
      },
    );
  }
}
