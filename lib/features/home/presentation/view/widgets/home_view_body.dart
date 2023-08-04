import 'package:asnan/constants.dart';
import 'package:asnan/core/utils/app_route.dart';

import 'package:asnan/core/utils/styles.dart';
import 'package:asnan/core/widgets/custom_button.dart';
import 'package:asnan/features/home/presentation/view_models/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'custom_image_view.dart';
import '../../../../../core/widgets/language_select_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GetX<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return Column(
                children: [
                  Stack(children: [
                    CustomImageView(imageAssets: controller.assetImage.value),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: GestureDetector(
                        child: Text(
                          '11'.tr,
                          style: Styles.textStyle20.copyWith(
                              color: Colors.teal, fontWeight: FontWeight.w300),
                        ),
                        onTap: () {
                          Get.offAllNamed(AppRoute.kLoginView);
                        },
                      ),
                    ),
                  ]),
                  StepProgressIndicator(
                    totalSteps: 100,
                    selectedColor: kYellowColor,
                    unselectedColor: Colors.grey.shade300,
                    currentStep: controller.indicatorStep.value,
                    size: 8,
                    padding: 0,
                  )
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetX<HomeController>(
                  builder: (controller) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${controller.textOrder.value}'.tr,
                          style: Styles.textStyle30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${controller.textOrder.value + 1}'.tr,
                          style: Styles.textStyle16,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                const LanguageSelectWidget(),
                const SizedBox(
                  height: 10,
                ),
                GetX<HomeController>(
                  builder: (controller) {
                    return CustomButton(
                      text: '${controller.buttonTextId}'.tr,
                      onTap: () {
                        controller.updateUi();
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
