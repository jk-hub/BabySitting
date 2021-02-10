import 'package:babySitting/widget/drop_down.dart';
import 'package:babySitting/widget/radio_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:babySitting/theme/app_text_style.dart';
import 'package:babySitting/theme/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String dropDownValue;
  Widget textField(
      {String hintText, IconData icon, TextInputType textInputType}) {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.pinkColor)),
        hintText: hintText,
        hintStyle: AppTextStyle.getRegularTextStyle(
          16,
          color: Colors.grey[400],
        ),
        suffixIcon: Icon(
          icon,
          color: AppColors.pinkColor,
        ),
      ),
    );
  }

  Widget _buildSignInCard() {
    return Card(
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30.0),
            textField(
              hintText: 'parent Name',
              icon: Icons.person_outline_outlined,
              textInputType: TextInputType.text,
            ),
            const SizedBox(height: 10.0),
            textField(
              hintText: 'Mobile Number',
              icon: Icons.mobile_friendly_outlined,
              textInputType: TextInputType.phone,
            ),
            const SizedBox(height: 10.0),
            textField(
              hintText: 'Email ID',
              icon: Icons.mail_outline,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10.0),
            BuildDropDown(
              hintText: 'city',
              items: <String>['Ambernath', 'Ulhasnagar', 'Kalyan', 'mumbai']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                print(value);
                dropDownValue = value;
                setState(() {});
              },
              value: dropDownValue,
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Number of Children',
                  style: AppTextStyle.getRegularTextStyle(
                    16,
                    color: AppColors.pinkColor,
                    weight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                  alignment: Alignment.centerLeft, child: RadioButtonWidget()),
            ),
            const SizedBox(height: 10.0),
            BuildDropDown(
              hintText: 'Relation With Child',
              items: <String>['father', 'Mother', 'GrandMother', 'Uncle']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                print(value);
                dropDownValue = value;
                setState(() {});
              },
              value: dropDownValue,
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
                  'Next',
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
                  '/loginScreen',
                  arguments: false,
                );
              },
              child: RichText(
                text: TextSpan(
                  text: "Already Have An Account ? ",
                  style: AppTextStyle.getRegularTextStyle(
                    13.0,
                    color: const Color(0xFF262F71),
                    weight: FontWeight.w400,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Sign In',
                      style: AppTextStyle.getRegularTextStyle(
                        15.5,
                        color: AppColors.blue,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            top: 120,
            left: 90,
            child: Text(
              'Sign Up to Continue',
              style: AppTextStyle.getRegularTextStyle(20,
                  color: AppColors.blue, weight: FontWeight.w700),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 120,
                left: 30.0,
                right: 30.0,
              ),
              child: _buildSignInCard(),
            ),
          ),
          Positioned(
            top: 116,
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
            top: 650,
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
    );
  }
}
