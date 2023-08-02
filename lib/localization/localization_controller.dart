import 'package:asnan/core/utils/assets_data.dart';
import 'package:asnan/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale inialLanguage = sharedPreferences!.getString('lang') == null
      ? Get.deviceLocale!
      : Locale(sharedPreferences!.getString('lang')!);
  String langLogo = sharedPreferences!.getString('lang') == 'ar'
      ? AssetsData.englishLogo
      : AssetsData.arabicLogo;

  void changeLanguage(String codeLang) {
    Locale locale = Locale(codeLang);
    sharedPreferences!.setString('lang', codeLang);
    langLogo =
        codeLang == 'ar' ? AssetsData.englishLogo : AssetsData.arabicLogo;
    Get.updateLocale(locale);
  }
}
