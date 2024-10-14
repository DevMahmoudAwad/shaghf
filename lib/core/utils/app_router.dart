import 'package:go_router/go_router.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/forgotpassword_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/login_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/signup_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/verification_page.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/birthday_page.dart';
import 'package:shaghf/features/home_screen/presentation/views/home_page.dart';
import 'package:shaghf/features/offers/presentation/views/event_details_screen.dart';
import 'package:shaghf/features/offers/presentation/views/event_screen.dart';
import 'package:shaghf/features/offers/presentation/views/offers_page.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/drawer.dart';
import 'package:shaghf/features/membership_screen/presentation/views/membership_page.dart';
import 'package:shaghf/features/photosession_screen/presentation/views/photosession_page.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheetView.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/room_page.dart';
import 'package:shaghf/features/splash_screen/presentation/view/OnboardingView.dart';
import 'package:shaghf/features/splash_screen/presentation/view/splashScreen.dart';

abstract class AppRouter {
  static const KLoginPage = "/LoginPage";
  static const KOnboardingView = "/OnboardingView";
  static const KSignUpPage = "/signup_page";
  static const KForgotPasswordPage = "/forgotpassword_page";
  static const KVerificationPage = "/verification_page";
  static const KHomePage = "/HomePage";
  static const RoomsPath = "/RoomPage";
  static const KRoomsDetails = "/BottomCheetView";
  static const KHomeDrawerPage = "/MyDrawer";
  static const OffersScroll="/OffersScroll";
  static const EventsScroll="/EventsScroll";
  static const EventReview="/EventReview";
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => Splashscreen()),
    GoRoute(path: '/', builder: (context, state) => PhotosessionPage()),
    GoRoute(path: KLoginPage, builder: (context, state) => LoginPage()),
    GoRoute(path: KHomePage, builder: (context, state) => HomePage()),
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
      builder: (context, state) => RoomPage(),
    ),
    GoRoute(
      path: KRoomsDetails,
      builder: (context, state) => BottomCheetView(),
    ),
     GoRoute(
        path: OffersScroll,
        builder: (context, state) => OffersPage(),
      ),
     GoRoute(
        path: EventsScroll,
        builder: (context, state) =>  EventScreen(),
      ),
      GoRoute(
        path: EventReview,
        builder: (context, state) =>  EventDetailsScreen(),
      ),


    // GoRoute(
    //   path: KHomeDrawerPage,
    //   builder: (context, state) => MyDrawer(),
    // )
  ]);
}
