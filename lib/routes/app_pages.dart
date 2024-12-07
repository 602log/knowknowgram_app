import 'package:get/get.dart';
import 'package:knowknowgram_app/routes/app_routes.dart';

import '../bindings/home_binding.dart';
import '../home/views/screens/home_screen.dart';

class AppPages {

  static const INITIAL = AppRoutes.HOME;
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}