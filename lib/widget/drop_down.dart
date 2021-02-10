import 'package:babySitting/theme/app_colors.dart';
import 'package:babySitting/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import '../core/size_config.dart';

class BuildDropDown extends StatelessWidget {
  final String hintText;
  final List<DropdownMenuItem<String>> items;
  final void Function(String) onChanged;
  final String value;

  const BuildDropDown({
    @required this.hintText,
    @required this.items,
    @required this.onChanged,
    @required this.value,
  })  : assert(hintText != null),
        assert(items != null),
        assert(onChanged != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 1.43 * SizeConfig.heightMultiplier,
      ),
      child: DropdownButton<String>(
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AppColors.pinkColor,
        ),
        hint: Text(
          hintText,
          style: AppTextStyle.getRegularTextStyle(
            2.1 * SizeConfig.textMultiplier,
            color: Colors.grey[400],
          ),
        ),
        isExpanded: true,
        underline: Container(
          height: 2,
          color: AppColors.pinkColor,
        ),
        items: items,
        onChanged: onChanged,
        value: value,
      ),
    );
  }
}
