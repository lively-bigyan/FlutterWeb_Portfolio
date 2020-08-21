import 'package:get/get.dart';

class ScreenController extends GetxController {
  static ScreenController get to => Get.find();
  RxInt _selectedIndex = 3.obs;
  int get selectedIndex => _selectedIndex.value;

  changeIndex(int index) {
    _selectedIndex.value = index;
    update();
  }

  navigateToHome() {
    _selectedIndex.value = 4;
    update();
  }
}
