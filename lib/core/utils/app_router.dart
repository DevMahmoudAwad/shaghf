import 'package:go_router/go_router.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/forgotpassword_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/login_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/signup_page.dart';
import 'package:shaghf/features/authentication_screen/presentation/views/verification_page.dart';
import 'package:shaghf/features/book_screen/presentation/view/book_screen_view.dart';
import 'package:shaghf/features/book_screen/presentation/view/widget/book_history_screen.dart';
import 'package:shaghf/features/book_screen/presentation/view/widget/book_review_screen.dart';
import 'package:shaghf/features/home_screen/presentation/views/home_page.dart';
import 'package:shaghf/features/home_screen/presentation/views/widgets/home_widgets/drawer.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/bottom_cheetView.dart';
import 'package:shaghf/features/rooms_screen/presentation/view/room_page.dart';
import 'package:shaghf/features/splash_screen/presentation/view/OnboardingView.dart';
import 'package:shaghf/features/splash_screen/presentation/view/splashScreen.dart';
import 'package:shaghf/features/membership_screen/presentation/views/membership_page.dart';
import 'package:shaghf/features/photosession_screen/presentation/views/photosession_page.dart';
import 'package:shaghf/features/birthday_screen/presentation/views/birthday_page.dart';

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
  static const KBookScreenView = "/BookScreenView";
  static const KBookReviewScreen = "/BookReviewScreen";
  static const KBookHistoryScreen = "/BookHistoryScreen";
  static const KPhotosessionPage = "/PhotosessionPage";
  static const KMembershipPage = "/MembershipPage";
  static const KBirthdayPage = "/BirthdayPage";
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => Splashscreen()),
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
      path: KBookScreenView,
      builder: (context, state) => BookScreenView(),
    ),
    GoRoute(
      path: KBookReviewScreen,
      builder: (context, state) => BookReviewScreen(),
    ),
    GoRoute(
      path: KBookHistoryScreen,
      builder: (context, state) => BookHistoryScreen(),
    ),
    GoRoute(path: KPhotosessionPage, builder: (context, state) => PhotosessionPage()),
    GoRoute(path: KMembershipPage, builder: (context, state) => MembershipPage()),
    GoRoute(path: KBirthdayPage, builder: (context, state) => BirthdayPage()),
  ]
  );
}
