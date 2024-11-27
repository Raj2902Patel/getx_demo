import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/localization/language_controller.dart';
import 'package:getx_demo/localization/localization_page.dart';
import 'package:getx_demo/localization/strings.dart';
import 'package:getx_demo/pages/404_page.dart';
import 'package:getx_demo/pages/mvc_page.dart';
import 'package:getx_demo/pages/page_four.dart';
import 'package:getx_demo/pages/page_one.dart';
import 'package:getx_demo/pages/page_three.dart';
import 'package:getx_demo/pages/page_two.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LanguageController _languageController = Get.put(LanguageController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Strings(),
      locale: _languageController.getSavedLocale(),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: 'localization',
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(
          name: '/first',
          page: () => const PageOne(),
        ),
        GetPage(
          name: '/second',
          page: () => const PageTwo(),
        ),
        GetPage(
          name: '/third',
          page: () => PageThree(),
        ),
        GetPage(
          name: '/four',
          page: () => FourPage(),
        ),
        GetPage(
          name: '/mvcPage',
          page: () => const MvcPage(),
        ),
        GetPage(
          name: '/localization',
          page: () => LocalizationPage(),
        )
      ],
      unknownRoute: GetPage(name: '/unknown', page: () => const ErrorPage()),
      debugShowCheckedModeBanner: false,
      home: const PageOne(),
    );
  }
}