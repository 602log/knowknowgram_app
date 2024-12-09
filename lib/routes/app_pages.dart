import 'package:get/get.dart';
import 'package:knowknowgram_app/bindings/logic_list_binding.dart';
import 'package:knowknowgram_app/bindings/play_binding.dart';
import 'package:knowknowgram_app/home/views/screens/intro_screen.dart';
import 'package:knowknowgram_app/play/screens/play_screen.dart';
import 'package:knowknowgram_app/routes/app_routes.dart';

import '../bindings/home_binding.dart';
import '../home/views/screens/home_screen.dart';
import '../logic/screens/logic_list_screen.dart';

class AppPages {
  static const INITIAL = AppRoutes.HOME;
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => IntroScreen(),
      binding: HomeBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.LOGIC_LIST,
      page: () => LogicListScreen(),
      binding: LogicListBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.PLAY,
      page: () => PlayScreen(),
      binding: PlayBinding(),
      transition: Transition.noTransition,
    )
  ];
}
