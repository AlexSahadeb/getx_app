import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SecoundScreen extends StatelessWidget {
  SecoundScreen({Key? key}) : super(key: key);
  final outputBox = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () => print(outputBox.read("data"))),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("data${outputBox.read("data")["name"]}"),
              Text("data${outputBox.read("data")["age"]}"),
              TextButton(
                  onPressed: () {
                    Get.snackbar("Title", "Lorem Ipsum doller sit");
                  },
                  child: Text("Go to Snakbar")),
              TextButton(
                  onPressed: () {
                    Get.defaultDialog();
                  },
                  child: Text("Go to Dialog")),
            ],
          ),
        ),
      ),
    );
  }
}
