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
