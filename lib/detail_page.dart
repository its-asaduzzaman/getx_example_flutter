import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class DetailPage extends StatelessWidget {
  final Controller controller = Get.find();

  DetailPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back),
            ),
            Text('${controller.counter}',style: TextStyle(
              fontSize: 24.0,
              color: Colors.red,
            ),),
          ],
        ),
      ),
    );
  }
}
