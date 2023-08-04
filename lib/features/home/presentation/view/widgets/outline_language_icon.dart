import 'package:asnan/constants.dart';

import 'package:flutter/material.dart';

class OutlineLanguageIcon extends StatelessWidget {
  const OutlineLanguageIcon({
    super.key,
    required this.iconAsset,
  });
  final String iconAsset;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: kYellowColor,
      child: CircleAvatar(
        radius: 13,
        backgroundImage: AssetImage(iconAsset),
      ),
    );
  }
}
