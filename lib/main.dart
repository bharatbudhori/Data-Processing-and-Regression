import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_app/another_screen.dart';

import 'package:practice_app/student_page.dart';
import 'package:practice_app/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Showing Alret SnackBar',
      home: DemoApp(),
      initialRoute: '/',
      defaultTransition: Transition.leftToRightWithFade,
      getPages: [
        GetPage(name: '/', page: () => DemoApp()),
        GetPage(name: '/welcome', page: () => WelcomeScreen()),
        GetPage(name: '/another_screen/', page: () => AnotherScreen()),
        GetPage(name: '/student', page: () => StudentPage()),
      ],
    );
  }
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                showSnackBar();
              },
              icon: Icon(Icons.add_alert),
              label: Text('Show SnackBar'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                showDialog();
              },
              icon: Icon(Icons.settings_display_outlined),
              label: Text('Show Dialog'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                showBottomsheet();
              },
              icon: Icon(Icons.settings_display_outlined),
              label: Text('Show Bottom Sheet'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Get.toNamed('/student');
              },
              icon: Icon(Icons.school),
              label: Text('Student Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var data = await Get.toNamed(
            '/welcome?Page=developer_jason&username=@dev.jason_',
            //transition: Transition.leftToRightWithFade,
            //popGesture: true,
            arguments: 'Data from main screen',
          );
          print(data);
        },
        label: Text('Go to welcome Screen'),
      ),
    );
  }
}

void showSnackBar() {
  Get.snackbar(
    'GetX SnackBar', 'This snackbar requires no context',
    duration: Duration(milliseconds: 1500),
    //snackPosition: SnackPosition.BOTTOM,
    colorText: Colors.deepOrange,
    backgroundColor: Colors.black,
    backgroundGradient: LinearGradient(
      colors: [Colors.amberAccent, Colors.tealAccent],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    dismissDirection: SnackDismissDirection.HORIZONTAL,
    overlayBlur: 2,
    //showProgressIndicator: true,
    //userInputForm: Form(child: TextField()),
    onTap: (snack) {
      Get.toNamed(
        '/another_screen',
        arguments: 'This is 1st data from main screen',
      );
    },
  );
}

void showDialog() {
  Get.defaultDialog(
    title: 'Alert Dialog',
    middleText: "Do you want to close dialog?",
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircularProgressIndicator(),
        Text('Loading'),
      ],
    ),
    actions: [
      TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text('Ok'),
      ),
    ],
  );
}

void showBottomsheet() {
  Get.bottomSheet(
    Container(
      color: Colors.white,
      height: 160,
      child: Wrap(
        children: [
          ListTile(
            leading: Icon(
              Icons.nights_stay_rounded,
              color: Colors.black,
            ),
            title: Text(
              'Dark Theem',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Get.changeTheme(
                ThemeData.dark(),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.wb_sunny,
              color: Colors.yellow,
            ),
            title: Text(
              'Light Theem',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Get.changeTheme(
                ThemeData.light(),
              );
            },
          ),
        ],
      ),
    ),
    backgroundColor: Colors.black,
    enableDrag: true,
  );
}
