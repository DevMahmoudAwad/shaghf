import 'package:go_router/go_router.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/forgotpassword_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/login_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/signup_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/verification_page.dart';
import 'package:shaghf/features/home_screen/presentation/views/home_page.dart';
import 'package:shaghf/features/splash_screen/presentation/view/OnboardingView.dart';

abstract class AppRouter {
  static const KLoginPage = "/LoginPage";
  static const KOnboardingView = "/OnboardingView";
  static const KSignUpPage = "/signup_page";
  static const KForgotPasswordPage = "/forgotpassword_page";
  static const KVerificationPage = "/verification_page";
<<<<<<< HEAD

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => Splashscreen()),
=======
  static const KOnBoardingView = "/OnboardingView";
  static const KLoginPage = "/login_page";
<<<<<<< HEAD
  static const RoomsPath="/Rooms";
=======
  static const KHomePage = "/home_page";
>>>>>>> bec26e8265fe207f61a24edde9a7e2c23373f9b7

  static final router = GoRouter(routes: [
    //GoRoute(path: '/', builder: (context, state) => SplashBody()),
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(path: KLoginPage, builder: (context, state) => LoginPage()),
>>>>>>> f1cab517ec40fd08544d552342704c288f5cbd6e
    GoRoute(
        path: KOnboardingView, builder: (context, state) => OnboardingView()),
    GoRoute(path: KLoginPage, builder: (context, state) => LoginPage()),
    GoRoute(
      path: KForgotPasswordPage,
      builder: (context, state) => ForgotpasswordPage(),
    ),
    GoRoute(
      path: KSignUpPage,
      builder: (context, state) => SignupPage(),
    ),
    GoRoute(
      path: KVerificationPage,
      builder: (context, state) => VerificationPage(),
    ),
      GoRoute(
        path: RoomsPath,
        builder: (context, state) => const RoomPage(),
      ),
     
      

  ]);
}
