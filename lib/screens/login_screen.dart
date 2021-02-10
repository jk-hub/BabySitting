import 'package:babySitting/theme/app_colors.dart';
import 'package:babySitting/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildSignInCard() {
    return Card(
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 25.0),
            TextField(
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.pinkColor)),
                hintText: 'Mobile Number',
                hintStyle: AppTextStyle.getRegularTextStyle(
                  16,
                  color: Colors.grey[400],
                ),
                suffixIcon: const Icon(
                  Icons.mobile_friendly_outlined,
                  color: AppColors.pinkColor,
                ),
              ),
            ),
            const SizedBox(height: 35.0),
            SizedBox(
              width: 160,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    '/dashboardScreen',
                    arguments: false,
                  );
                },
                color: AppColors.pinkColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 6.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                textColor: Colors.white,
                child: Text(
                  'Verify',
                  style: AppTextStyle.getRegularTextStyle(
                    16,
                    color: AppColors.whiteColor,
                    weight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                  '/signupScreen',
                  arguments: false,
                );
              },
              child: RichText(
                text: TextSpan(
                  text: "Dont't Have an Account ? ",
                  style: AppTextStyle.getRegularTextStyle(
                    13.0,
                    color: const Color(0xFF262F71),
                    weight: FontWeight.w400,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: AppTextStyle.getRegularTextStyle(
                        15.5,
                        color: const Color(0xFFE36DA6),
                        weight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Text(
              'Forgot Password?',
              style: AppTextStyle.getRegularTextStyle(
                13.0,
                color: const Color(0xFFF1B6D2),
                weight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/circleimage.png',
                height: 100,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/lines.png',
                height: 100,
              ),
            ),
            Positioned(
              top: 50,
              left: 140,
              child: Image.asset(
                'assets/images/logo.png',
                height: 70,
              ),
            ),
            Positioned(
              top: 150,
              left: 100,
              child: Text(
                'Sign in to Continue',
                style: AppTextStyle.getRegularTextStyle(20,
                    color: AppColors.blue, weight: FontWeight.w700),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                ),
                child: _buildSignInCard(),
              ),
            ),
            Positioned(
              top: 166,
              left: 15,
              child: Image.asset(
                'assets/images/pin.png',
                height: 100,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Positioned(
              top: 490,
              left: 160,
              child: Text(
                'Skip',
                style: AppTextStyle.getRegularTextStyle(
                  16,
                  color: AppColors.blue,
                  weight: medium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
