import 'package:asnan/localization/localization_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/assets_data.dart';
import '../../features/home/presentation/view/widgets/outline_language_icon.dart';

class LanguageSelectWidget extends StatelessWidget {
  const LanguageSelectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<LocaleController>(
      init: LocaleController(),
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: controller.isEnglishSelected.value
                  ? Image.asset(AssetsData.arabicLogo)
                  : const OutlineLanguageIcon(iconAsset: AssetsData.arabicLogo),
              onPressed: () {
                controller.changeLanguage('ar');
              },
            ),
            IconButton(
              icon: controller.isEnglishSelected.value
                  ? const OutlineLanguageIcon(iconAsset: AssetsData.englishLogo)
                  : Image.asset(AssetsData.englishLogo),
              onPressed: () {
                controller.changeLanguage('en');
              },
            ),
          ],
        );
      },
    );
  }
}
