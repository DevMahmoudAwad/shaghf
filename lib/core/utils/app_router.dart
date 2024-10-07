import 'package:go_router/go_router.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/forgotpassword_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/login_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/signup_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/verification_page.dart';
<<<<<<< HEAD
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheet/details_rooms_body.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheetView.dart';
=======
import 'package:shaghf/features/home_screen/presentation/views/home_page.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/drawer.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheetView.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/room_page.dart';
>>>>>>> c6de7906574a32cba71f4c10167e076ba676a381
import 'package:shaghf/features/splash_screen/presentation/view/OnboardingView.dart';
import 'package:shaghf/features/splash_screen/presentation/view/splashScreen.dart';

abstract class AppRouter {
  static const KLoginPage = "/LoginPage";
  static const KOnboardingView = "/OnboardingView";
  static const KSignUpPage = "/signup_page";
  static const KForgotPasswordPage = "/forgotpassword_page";
  static const KVerificationPage = "/verification_page";
<<<<<<< HEAD
  static const KHomePage = "/home_page";
  static const RoomsPath = "/RoomPage";
  static const KRoomsDetails = "/BottomCheetView";
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => Splashscreen()),
    GoRoute(path: KLoginPage, builder: (context, state) => LoginPage()),
=======
  static const KHomePage = "/HomePage";
  static const RoomsPath = "/RoomPage";
  static const KRoomsDetails = "/BottomCheetView";
  static const KHomeDrawerPage = "/MyDrawer";
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => Splashscreen()),
    GoRoute(path: KLoginPage, builder: (context, state) => LoginPage()),
    GoRoute(path: KHomePage, builder: (context, state) => HomePage()),
>>>>>>> c6de7906574a32cba71f4c10167e076ba676a381
    GoRoute(
        path: KOnboardingView, builder: (context, state) => OnboardingView()),
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
<<<<<<< HEAD
      builder: (context, state) => const RoomPage(),
    ),
    GoRoute(
      path: KRoomsDetails,
      builder: (context, state) => const BottomCheetView(),
=======
      builder: (context, state) => RoomPage(),
    ),
    GoRoute(
      path: KRoomsDetails,
      builder: (context, state) => BottomCheetView(),
    ),
    GoRoute(
      path: KHomeDrawerPage,
      builder: (context, state) => MyDrawer(),
>>>>>>> c6de7906574a32cba71f4c10167e076ba676a381
    )
  ]);
}
