import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.onChange,
      this.obscurText = false,
      this.onPressedIcon});

  final bool? obscurText;
  final String hintText;
  final VoidCallback? onPressedIcon;
  final IconData? suffixIcon;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscurText!,
      onChanged: onChange,
      validator: (value) {
        if (value!.isEmpty) {
          return '17'.tr;
        }
      },
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            onPressed: onPressedIcon,
          ),
          border: textFieldBorder(),
          hintText: hintText,
          enabledBorder: textFieldBorder(),
          focusedBorder: textFieldBorder()),
    );
  }

  OutlineInputBorder textFieldBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
      );
}
