import 'package:babySitting/core/size_config.dart';
import 'package:babySitting/screens/dashboard.dart';
import 'package:babySitting/screens/home_screen.dart';
import 'package:babySitting/screens/login_screen.dart';
import 'package:babySitting/screens/signup_screen.dart';
import 'package:babySitting/screens/splash_screen.dart';
import 'package:babySitting/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Baby Sitting',
              theme: ThemeData(
                primaryColor: AppColors.pinkColor,
                textTheme: GoogleFonts.latoTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              initialRoute: '/',
              onGenerateRoute: routing,
            );
          },
        );
      },
    );
  }

  Route routing(RouteSettings settings) {
    switch (settings.name) {
      case '/loginScreen':
        return PageTransition(
          child: LoginScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;
      case '/signupScreen':
        return PageTransition(
          child: SignUpScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;
      case '/homeScreen':
        return PageTransition(
          child: HomePage(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;
      case '/dashboardScreen':
        return PageTransition(
          child: DashbaordScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;

      default:
        return PageTransition(
          child: SplashScreen(),
          type: PageTransitionType.rightToLeftWithFade,
        );
        break;
    }
  }
}
