import 'package:get/get.dart';
import 'package:knowknowgram_app/bindings/generate_binding.dart';
import 'package:knowknowgram_app/bindings/logic_list_binding.dart';
import 'package:knowknowgram_app/bindings/play_binding.dart';
import 'package:knowknowgram_app/bindings/rank_binding.dart';
import 'package:knowknowgram_app/bindings/user_info_binding.dart';
import 'package:knowknowgram_app/generate/screens/generate_option_screen.dart';
import 'package:knowknowgram_app/generate/screens/generate_screen.dart';
import 'package:knowknowgram_app/home/views/screens/intro_screen.dart';
import 'package:knowknowgram_app/play/screens/play_screen.dart';
import 'package:knowknowgram_app/rank/screens/rank_screen.dart';
import 'package:knowknowgram_app/routes/app_routes.dart';
import 'package:knowknowgram_app/user_info/screens/user_info_screen.dart';
import 'package:knowknowgram_app/user_info/screens/user_screen.dart';

import '../bindings/home_binding.dart';
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
    ),
    GetPage(
      name: AppRoutes.GENERATE_OPTION,
      page: () => GenerateOptionScreen(),
      binding: GenerateBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.GENERATE,
      page: () => GenerateScreen(),
      binding: GenerateBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.USERINFO,
      page: () => UserInfoScreen(),
      binding: UserInfoBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.RANK,
      page: () => RankScreen(),
      binding: RankBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
