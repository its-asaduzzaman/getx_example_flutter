import 'package:get/get.dart';

class Controller extends GetxController {
  var counter = 0.obs;

  increment() {
    counter++;
  }

  decrement() {
    counter--;
  }

  reset() {
    counter.value = 0;
  }
}
