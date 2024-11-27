import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends GetxController {
  final _storage = GetStorage();
  final _localeKey = 'selectedLocale';

  void changeLocale(String langCode, String countryCode) {
    Locale locale = Locale(langCode, countryCode);
    Get.updateLocale(locale);

    _storage.write(
        _localeKey, {'languageCode': langCode, 'countryCode': countryCode});
  }

  Locale? getSavedLocale() {
    Map<String, dynamic>? savedLocale = _storage.read(_localeKey);
    if (savedLocale != null) {
      return Locale(savedLocale['languageCode']!, savedLocale['countryCode']!);
    }
    return const Locale('en', 'US');
  }
}
