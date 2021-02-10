import 'package:babySitting/theme/app_colors.dart';
import 'package:babySitting/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  @override
  _RadioButtonWidgetState createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  dynamic modeOfCheck;
  bool isActive = false;
  bool isSecondeActive = false;
  bool isThirdActive = false;
  Widget getRadioButtons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Radio(
            value: '1(one)',
            groupValue: modeOfCheck,
            activeColor: AppColors.pinkColor,
            onChanged: (value) {
              setState(() {
                modeOfCheck = value;
                isActive = true;
                isSecondeActive = false;
                isThirdActive = false;
              });
            },
          ),
        ),
        GestureDetector(
          onTap: () => setState(() {
            modeOfCheck = '1(one)';
            isActive = true;
            isSecondeActive = false;
            isThirdActive = false;
          }),
          child: Text(
            '1(one)',
            style: AppTextStyle.getRegularTextStyle(
              14,
              color: isActive ? AppColors.pinkColor : Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 20,
          height: 20,
          child: Radio(
            value: '2(two)',
            groupValue: modeOfCheck,
            activeColor: AppColors.pinkColor,
            onChanged: (value) {
              setState(() {
                modeOfCheck = value;
                isSecondeActive = true;
                isActive = false;
                isThirdActive = false;
              });
            },
          ),
        ),
        GestureDetector(
          onTap: () => setState(() {
            modeOfCheck = '2(two)';
            isSecondeActive = true;
            isActive = false;
            isThirdActive = false;
          }),
          child: Text(
            '2(two)',
            style: AppTextStyle.getRegularTextStyle(
              14,
              color: isSecondeActive ? AppColors.pinkColor : Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 20,
          height: 20,
          child: Radio(
            value: 'More',
            groupValue: modeOfCheck,
            activeColor: AppColors.pinkColor,
            onChanged: (value) {
              setState(() {
                modeOfCheck = value;
                isThirdActive = true;
                isActive = false;
                isSecondeActive = false;
              });
            },
          ),
        ),
        GestureDetector(
          onTap: () => setState(() {
            modeOfCheck = 'More';
            isThirdActive = true;
            isActive = false;
            isSecondeActive = false;
          }),
          child: Text(
            'More',
            style: AppTextStyle.getRegularTextStyle(
              14,
              color: isThirdActive ? AppColors.pinkColor : Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return getRadioButtons(context);
  }
}
