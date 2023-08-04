import 'package:asnan/constants.dart';
import 'package:asnan/core/utils/assets_data.dart';
import 'package:asnan/core/utils/styles.dart';
import 'package:asnan/core/widgets/custom_button.dart';

import 'package:asnan/core/widgets/custom_text_field.dart';
import 'package:asnan/core/widgets/language_select_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool obscureText = true;
  String? email, password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '12'.tr,
                style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                '14'.tr,
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hintText: '15'.tr,
                onChange: (value) {
                  email = value;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onChange: (value) {
                  password = value;
                },
                hintText: '16'.tr,
                suffixIcon: obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                onPressedIcon: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                obscurText: obscureText,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '13'.tr,
                textAlign: TextAlign.end,
                style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                  text: '12'.tr,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  }),
              const SizedBox(
                height: 12,
              ),
              Text(
                '18'.tr,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              const LanguageSelectWidget(),
              const SizedBox(
                height: 16,
              ),
              const Row(children: [
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("OR"),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                )),
              ]),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                text: '19'.tr,
                onTap: () {},
                iconAsset: AssetsData.facebookIcon,
                color: kBlueColor,
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
