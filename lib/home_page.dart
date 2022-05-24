import 'package:countergetx/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('samrat'),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  MaterialButton(
                    onPressed: () {
                      Get.to(controller.increment());
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: const Text('+'),
                  ),
                  const SizedBox(width: 20.0,),
                  Obx(
                    () => Text('${controller.counter}'),
                  ),
                  const SizedBox(width: 20.0,),
                  MaterialButton(
                    onPressed: () {
                      Get.to(controller.decrement());
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: const Text('-'),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {controller.reset();},
              color: Colors.redAccent,
              textColor: Colors.white,
              child: const Text('Reset'),
            ),
            MaterialButton(
              onPressed: () {Get.to(DetailPage());},
              color: Colors.black,
              textColor: Colors.white,
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
