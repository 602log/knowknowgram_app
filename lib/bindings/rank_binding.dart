import 'package:get/get.dart';
import 'package:knowknowgram_app/rank/screens/rank_screen.dart';

class RankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RankScreen>(() => const RankScreen());
  }
}