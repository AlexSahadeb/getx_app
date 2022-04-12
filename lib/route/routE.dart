import 'package:flutter_getx_app/home.dart';
import 'package:flutter_getx_app/secoundscreen.dart';
import 'package:get/get.dart';

const String frisscreen = "/HomePage";

const String secoundscreen = "/scoundPage";

List<GetPage> getpages = [
  GetPage(
    name: frisscreen,
    page: () => MyHomePage(),
  ),
  GetPage(name: secoundscreen, page: () => SecoundScreen())
];
