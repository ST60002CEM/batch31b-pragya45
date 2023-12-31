import 'package:glowandglam/features/splash/presentation/views/onboarding_views.dart';

class AppRoutes {
  AppRoutes._();

  static const String onboardingRoute = '/onboarding';

  static getApplicationRoute() {
    return {
      onboardingRoute: (context) => const OnboardingView(),
    };
  }
}
