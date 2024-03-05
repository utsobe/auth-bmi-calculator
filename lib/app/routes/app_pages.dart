import 'package:get/get.dart';

import '../modules/bmi_result/bindings/bmi_result_binding.dart';
import '../modules/bmi_result/views/bmi_result_view.dart';
import '../modules/bottom_navigation/bindings/bottom_navigation_binding.dart';
import '../modules/bottom_navigation/views/bottom_navigation_view.dart';
import '../modules/calculate/bindings/calculate_binding.dart';
import '../modules/calculate/views/calculate_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/term_condition/bindings/term_condition_binding.dart';
import '../modules/term_condition/views/term_condition_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 700),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 700),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION,
      page: () => const BottomNavigationView(),
      binding: BottomNavigationBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 700),
    ),
    GetPage(
      name: _Paths.CALCULATE,
      page: () => const CalculateView(),
      binding: CalculateBinding(),
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 700),
    ),
    GetPage(
      name: _Paths.BMI_RESULT,
      page: () => const BmiResultView(),
      binding: BmiResultBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 700),
    ),
    GetPage(
      name: _Paths.TERM_CONDITION,
      page: () => const TermConditionView(),
      binding: TermConditionBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 700),
    ),
  ];
}
