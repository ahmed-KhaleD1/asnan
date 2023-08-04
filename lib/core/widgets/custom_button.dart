import 'package:asnan/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.iconAsset,
      this.color = Colors.teal});
  final String text;
  final VoidCallback onTap;
  final String? iconAsset;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconAsset != null)
                Container(
                  width: 20,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.white,
                  child: Image.asset(
                    iconAsset!,
                    height: 20,
                  ),
                ),
              Flexible(
                child: Text(
                  text,
                  style: Styles.textStyle18.copyWith(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
