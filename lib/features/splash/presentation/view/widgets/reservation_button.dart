import 'package:asnan/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReserationButton extends StatelessWidget {
  const ReserationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.teal),
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        '2'.tr,
        textAlign: TextAlign.center,
        style: Styles.textStyle20.copyWith(color: Colors.teal),
      ),
    );
  }
}
