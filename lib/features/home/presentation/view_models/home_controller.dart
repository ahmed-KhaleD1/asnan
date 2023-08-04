import 'package:asnan/core/utils/app_route.dart';
import 'package:asnan/core/utils/assets_data.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt indicatorStep = 33.obs;
  RxString assetImage = AssetsData.image1.obs;
  RxInt textOrder = 4.obs;
  RxInt buttonTextId = 3.obs;

  void updateUi() {
    if (indicatorStep.value == 99) {
      Get.offAllNamed(AppRoute.kLoginView);
      indicatorStep.value = 0;
    } else if (indicatorStep.value == 66) {
      buttonTextId.value = 10;
      assetImage.value = AssetsData.image2;
      indicatorStep.value += 33;
      textOrder.value += 2;
    } else {
      assetImage.value = AssetsData.image2;
      indicatorStep.value += 33;
      textOrder.value += 2;
    }
  }
}
