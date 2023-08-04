import 'package:asnan/core/utils/assets_data.dart';
import 'package:asnan/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  // this variable select initial language depends on
  //if the first time user open the app if it is the first time
  //the language will be the device language if not it will be the language was stroed in shared preferences
  Locale inialLanguage = sharedPreferences!.getString('lang') == null
      ? Get.deviceLocale!
      : Locale(sharedPreferences!.getString('lang')!);

  // to determine which language logo should be shown
  String langLogo = sharedPreferences!.getString('lang') == 'ar'
      ? AssetsData.englishLogo
      : AssetsData.arabicLogo;

// to Know which language was selected
  RxBool isEnglishSelected =
      (sharedPreferences!.getString('lang') == 'en' ? true : false).obs;

  void changeLanguage(String codeLang) {
    if (codeLang != sharedPreferences!.getString('lang'))
      isEnglishSelected.value = !isEnglishSelected.value;
    Locale locale = Locale(codeLang);
    sharedPreferences!.setString('lang', codeLang);
    langLogo =
        codeLang == 'ar' ? AssetsData.englishLogo : AssetsData.arabicLogo;
    Get.updateLocale(locale);
  }
}
