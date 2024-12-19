import 'package:get/get.dart';
import 'package:knowknowgram_app/home/views/screens/home_screen.dart';
import 'package:knowknowgram_app/user_info/screens/user_info_screen.dart';

class UserInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserInfoScreen>(() => const UserInfoScreen());
  }
}