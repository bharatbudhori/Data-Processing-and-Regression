import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Get.arguments),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/another_screen');
              },
              child: Text('GO to another screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Data from welcome screen');
              },
              child: Text('GO back to main screen'),
            ),
          ],
        ),
      ),
    );
  }
}
