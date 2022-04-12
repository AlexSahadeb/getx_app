import 'package:flutter/material.dart';
import 'package:flutter_getx_app/model/Model_data.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyHomePage extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/scoundPage");
                  },
                  child: const Text("Go to red color")),
              TextField(
                controller: _nameController,
                autocorrect: true,
              ),
              TextField(
                controller: _ageController,
                autocorrect: true,
              ),
              ElevatedButton(
                  onPressed: () {
                    final name = _nameController.text;
                    final age = _ageController.text;
                    final box = GetStorage();
                    box.write("data", MyData(name: name, age: age));
                    // print("added");
                  },
                  child: Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
