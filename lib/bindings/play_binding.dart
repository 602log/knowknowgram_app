import 'package:get/get.dart';
import 'package:knowknowgram_app/play/screens/play_screen.dart';

class PlayBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<PlayScreen>(() => PlayScreen());
  }

}