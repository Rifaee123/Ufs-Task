import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
  final RxInt index=0.obs;
  // List of paths to your images
  final List<String> images =
      List.generate(36, (index) => "assets/image_${index + 1}.png");
}