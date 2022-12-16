import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/app_text_style.dart';

commonAppbar(String title, Widget button) {
  return PreferredSize(
    preferredSize: Size.fromHeight(75.0),
    child: AppBar(
      elevation: AppNumbers.appBarElevation,
      backgroundColor: AppColors.appBarBackground,
      title: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              right: AppNumbers.padding,
              top: 10,
              left: AppNumbers.padding,
              bottom: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  title,
                  style: kAppBar,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Spacer(),
              button
            ],
          ),
        ),
      ),
      titleSpacing: 0.0,
      automaticallyImplyLeading: false,
    ),
  );
}
