import 'package:asnan/core/utils/assets_data.dart';
import 'package:asnan/localization/localization_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSwitchLanguageButton extends StatelessWidget {
  const CustomSwitchLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.find();
    return IconButton(
      icon: GetBuilder<LocaleController>(
        init: LocaleController(),
        builder: (controller) {
          return Image.asset(controller.langLogo);
        },
      ),
      onPressed: () {
        controller
            .changeLanguage(Get.locale == const Locale('ar') ? 'en' : 'ar');
      },
    );
  }
}
