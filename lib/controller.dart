import 'package:get/get.dart';
import 'package:practice_app/student.dart';

class Controller extends GetxController {
  final student = Student(name: 'jason', age: 20).obs;

  void convertToUpper() {
    student.update((val) {
      student.value.name = student.value.name.toUpperCase();
    });
  }
}

class MyController extends GetxController {
  var count = 0;

  void incriment() {
    count++;
    update();
  }
}

class MyController2 extends GetxController {
  var count = 0.obs;

  void incriment() {
    count += 2;
  }
}

class ControllerBinding implements Bindings {
  var count = 0.obs;

  @override
  void dependencies() {
    Get.lazyPut<MyController2>(() => MyController2());
  }
}
