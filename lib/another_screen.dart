import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/controller.dart';

class AnotherScreen extends StatelessWidget {
  // var count = 0.obs;
  // void increment() {
  //   count++;
  // }

  @override
  Widget build(BuildContext context) {
    MyController myController = Get.put(MyController(), permanent: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Another screen'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          myController.incriment();
        },
        label: Text('Incriment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              Get.arguments,
            ),
            //GetX<MyController>(
            GetBuilder<MyController>(
              init: myController,
              builder: (controller) {
                return Card(
                  margin: EdgeInsets.all(40),
                  elevation: 20,
                  color: Colors.pink,
                  child: //Obx(
                      //() =>
                      Text(
                    'Count value is: ${controller.count} ',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
