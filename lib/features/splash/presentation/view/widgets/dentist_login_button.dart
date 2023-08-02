import 'package:asnan/core/utils/assets_data.dart';
import 'package:asnan/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DentistLoginButton extends StatelessWidget {
  const DentistLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade400)),
      child: Row(children: [
        Text(
          '1'.tr,
          style: Styles.textStyle16,
        ),
        Image.asset(AssetsData.doctorLogo, width: 30),
      ]),
    );
  }
}
