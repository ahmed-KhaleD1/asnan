import 'package:asnan/core/utils/assets_data.dart';
import 'package:asnan/features/splash/presentation/view/widgets/custom_app_bar.dart';
import 'package:asnan/features/splash/presentation/view/widgets/reservation_button.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomAppBar(),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.35,
            child: AspectRatio(
                aspectRatio: 1, child: Image.asset(AssetsData.asnanLogo))),
        const Spacer(
          flex: 6,
        ),
        const ReserationButton(),
        const Spacer()
      ],
    );
  }
}
