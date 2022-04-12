import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_getx_app/route/routE.dart';
import 'package:get/get.dart';

void main() {
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/HomePage",
      getPages: getpages,
    );
  }
}
