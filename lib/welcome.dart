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
                //Get.toNamed("/another_screen/This is some value");
                Get.toNamed('/another_screen',
                    arguments: "data from welcome screen to home screen");
              },
              child: Text('GO to another screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Data from welcome screen');
              },
              child: Text('GO back to main screen'),
            ),
            Text('${Get.parameters['Page']} ${Get.parameters['username']}'),
          ],
        ),
      ),
    );
  }
}
