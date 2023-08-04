import 'package:asnan/core/widgets/custom_switch_language_button.dart';
import 'package:asnan/features/splash/presentation/view/widgets/dentist_login_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomSwitchLanguageButton(),
        DentistLoginButton(),
      ],
    );
  }
}
