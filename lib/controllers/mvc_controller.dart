import 'package:get/get.dart';

class MvcController extends GetxController {
  // var count = 0.obs;
  var count = 0.obs;

  void increment() {
    count++;
    update(['1234']);
  }

  @override
  void onInit() {
    super.onInit();
    // ever(count, (callback) => print("ever"));

    // once(count, (callback) => print("Once"));

    debounce(
      count,
      (callback) => print("Debounce"),
      time: const Duration(seconds: 5),
    );
    print("INIT METHOD CALLED");
  }

  @override
  void onClose() {
    super.onClose();
    print("CLOSE METHOD CALLED");
  }
}
