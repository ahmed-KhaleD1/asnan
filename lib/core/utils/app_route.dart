import 'package:asnan/features/auth/presentation/view/login_view.dart';
import 'package:asnan/features/home/presentation/view/home_view.dart';
import 'package:asnan/features/splash/presentation/view/splash_view.dart';
import 'package:get/get.dart';

class AppRoute {
  static const String kHomeView = '/homeView';
  static const String kLoginView = '/loginView';

  static final List<GetPage> appRoute = [
    GetPage(name: '/', page: () => const SplashView()),
    GetPage(name: kHomeView, page: () => const HomeView()),
    GetPage(name: kLoginView, page: () => const LoginView())
  ];
}
