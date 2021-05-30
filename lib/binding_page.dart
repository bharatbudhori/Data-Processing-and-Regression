import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class BindingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BInding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'The value of count is : ${Get.find<MyController2>().count}',
                  style: TextStyle(fontSize: 25),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.find<MyController2>().incriment();
                },
                child: Text('+2'))
          ],
        ),
      ),
    );
  }
}
