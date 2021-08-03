import 'package:adfidia/screens/home.dart';
import 'package:adfidia/screens/onBoard.dart';
import 'package:adfidia/screens/splash_screen.dart';

getRoutes() {
  return {
    SplashScreen.route: (context) => SplashScreen(),
    OnboardingScreen.route: (context) => OnboardingScreen(),
    Home.route: (context) => Home(),
  };
}
