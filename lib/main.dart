import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:knowknowgram_app/routes/app_pages.dart';
import 'package:knowknowgram_app/theme/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
      const MyApp()
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: mediumBlack,
        ),
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      )
    );
  }
}

