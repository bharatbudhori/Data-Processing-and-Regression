import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller.dart';

//TextEditingController textController = TextEditingController();
Controller myController = Get.put(Controller());

class StudentPage extends StatelessWidget {
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
                  // newAge();
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

//  newAge() {
//   Get.bottomSheet(
//     Container(
//       //margin: EdgeInsets.all(20),
//       padding: EdgeInsets.all(16),
//       height: 160,
//       color: Colors.white,
//       child: TextField(
//         //controller: textController,
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           labelText: 'Enter new Age',
//         ),
//         keyboardType: TextInputType.number,
//         onSubmitted: (value) {
//           var age = int.parse(value);
//           myController.student.value.age = age;
//         },

//       ),
//     ),
//   );
// }
