import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnotherScreen extends StatelessWidget {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another screen'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: increment,
        label: Text('Incriment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              Get.arguments,
            ),
            Card(
              margin: EdgeInsets.all(40),
              elevation: 20,
              color: Colors.pink,
              child: Obx(
                () => Text(
                  'Count value is: $count ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
