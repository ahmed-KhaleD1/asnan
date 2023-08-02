import 'package:asnan/features/splash/presentation/view/splash_view.dart';
import 'package:asnan/localization/localization.dart';
import 'package:asnan/localization/localization_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const AsnanApp());
}

class AsnanApp extends StatelessWidget {
  const AsnanApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.inialLanguage,
      translations: Localization(),
      home: const SplashView(),
    );
  }
}
