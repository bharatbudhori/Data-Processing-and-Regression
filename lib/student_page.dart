import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller.dart';

class StudentPage extends StatelessWidget {
  Controller myController = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
      ),
      body: Center(
        child: Obx(
          () => Column(
            children: [
              Text('Name is : ${myController.student.value.name}'),
              ElevatedButton(
                onPressed: () {
                  myController.convertToUpper();
                },
                child: Text('ToUpper'),
              ),
              Text('Age is: ${myController.student.value.age}'),
              ElevatedButton(
                onPressed: () {
                  //newAge();
                },
                child: Text('Enter new age'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
