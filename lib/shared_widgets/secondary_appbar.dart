import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/app_text_style.dart';
import 'package:iec_group/constants/size_config.dart';

Widget secondaryAppbar(String text) {
  double width = SizeConfig.widthMultiplier! * 100;
  return Container(
      width: width,
      height: AppNumbers.secondaryAppBarHeight,
      padding: EdgeInsets.all(AppNumbers.padding),
      color: AppColors.secondaryAppBarBackground,
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: kSecondaryAppBarSecondaryText,
        textAlign: TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ));
}
