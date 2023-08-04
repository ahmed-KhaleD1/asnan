import 'package:asnan/core/utils/app_route.dart';
import 'package:asnan/core/utils/styles.dart';
import 'package:asnan/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservationButton extends StatelessWidget {
  const ReservationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoute.kHomeView);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.teal),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          '2'.tr,
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(color: Colors.teal),
        ),
      ),
    );
  }
}
