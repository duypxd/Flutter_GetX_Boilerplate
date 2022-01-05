import 'package:get/get.dart';
import 'package:getx_boilerplate/modules/auth/auth.dart';
import 'package:getx_boilerplate/modules/home/home.dart';
import 'package:getx_boilerplate/modules/me/cards/cards_screen.dart';
import 'package:getx_boilerplate/modules/modules.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => const AuthScreen(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
        GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
      ],
    ),
    GetPage(
        name: Routes.HOME,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.CARDS, page: () => const CardsScreen()),
        ]),
  ];
}
