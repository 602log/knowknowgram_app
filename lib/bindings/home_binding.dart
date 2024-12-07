import 'package:get/get.dart';
import 'package:knowknowgram_app/home/views/screens/home_screen.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreen>(() => const HomeScreen());
  }


}