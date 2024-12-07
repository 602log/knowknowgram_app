import 'package:get/get.dart';

import '../logic/screens/logic_list_screen.dart';


class LogicListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogicListScreen>(() => LogicListScreen());
  }
}