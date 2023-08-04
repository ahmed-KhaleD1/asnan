import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    required this.imageAssets,
  });
  final String imageAssets;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 0.84,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    imageAssets,
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
