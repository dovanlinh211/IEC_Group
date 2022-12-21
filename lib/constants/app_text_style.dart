import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/size_config.dart';
import 'package:iec_group/constants/custom_sizeconfig.dart';

var kAppBar = TextStyle(
    color: AppColors.appBarText,
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.w400);
var kBottomNavBarLabel = TextStyle(
    // letterSpacing: -0.5,
    fontSize: SizeConfig.widthMultiplier! * 3,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w500);
var kIntroTextStyle = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.w600,
    color: AppColors.subText);

var kSubTextStyle = TextStyle(
  fontSize: SizeConfig.widthMultiplier! * 4,
  fontWeight: FontWeight.w400,
  color: AppColors.subTextMini,
);
var kHintStyle = TextStyle(
  fontSize: SizeConfig.widthMultiplier! * 4,
  fontWeight: FontWeight.w400,
  color: AppColors.grey,
);
var kMainSubTextStyle = TextStyle(
  fontSize: SizeConfig.widthMultiplier! * 4.5,
  fontWeight: FontWeight.w500,
  color: AppColors.subTextMini,
);
var kMainTextStyleWorking = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 8,
    fontWeight: FontWeight.w500,
    color: AppColors.workingText);
var kMainTextStyleNotWorking = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 10,
    fontWeight: FontWeight.w500,
    color: AppColors.notWorkingText);
var kDateSubTextStyle = TextStyle(
  fontSize: SizeConfig.widthMultiplier! * 5,
  fontWeight: FontWeight.w500,
  color: AppColors.subTextMini,
);
var kDateSubTextStyleValue = TextStyle(
  fontSize: SizeConfig.widthMultiplier! * 5,
  fontWeight: FontWeight.w500,
  color: AppColors.primaryColor,
);
var kFormHint = TextStyle(
  fontSize: SizeConfig.widthMultiplier! * 4.7,
  fontWeight: FontWeight.w400,
  color: AppColors.subTextMini,
);
var kSecondaryAppBarPrimaryText = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 5,
    color: AppColors.secondaryAppBarPrimaryText,
    fontWeight: FontWeight.w700);
var kSecondaryAppBarSecondaryText2 = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    color: AppColors.subText,
    fontWeight: FontWeight.w500);
var kSecondaryAppBarSecondaryText = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 3.5,
    color: AppColors.subText,
    fontWeight: FontWeight.w400);
var kSecondaryAppBarSecondaryText14 = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 3,
    color: AppColors.subText,
    fontWeight: FontWeight.w500);
var kManualButtonText = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 4.5,
    color: Colors.white,
    fontWeight: FontWeight.w500);
var kScanTagHead = TextStyle(
    fontSize: SizeConfig.textMultiplier! * 2,
    color: Colors.white,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5);
var kScanTagSub = TextStyle(
    color: Colors.white,
    fontSize: SizeConfig.textMultiplier! * 2,
    fontWeight: FontWeight.w500);
var kProfileTitle = TextStyle(
    color: AppColors.profilePageTitle,
    fontSize: SizeConfig.widthMultiplier! * 4.5,
    fontWeight: FontWeight.w400);

var kNotificationDetailSub = TextStyle(
    color: AppColors.notificationDesc,
    fontSize: SizeConfig.widthMultiplier!* 4.7,
    fontWeight: FontWeight.w400);
var kAlertDesc = TextStyle(
    color: AppColors.profilePageTitle,
    fontSize: SizeConfig.widthMultiplier! * 4.6,
    fontWeight: FontWeight.w500);
var kBusinessText = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    color: AppColors.businessFontColor,
    fontWeight: FontWeight.bold);

var kProfileTitleValue = TextStyle(
    color: AppColors.profilePageValue,
    fontSize: SizeConfig.widthMultiplier! * 4.5,
    fontWeight: FontWeight.w500);
var kProfileTitleValueBold = TextStyle(
    color: AppColors.profilePageValue,
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.bold);
var kProfileMansionListTitle = TextStyle(
    color: AppColors.profilePageValue,
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.w400);
var kProfileValue = TextStyle(
    color: AppColors.profilePageTitleValue,
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.w500);
var kProfileMansionListingHead = TextStyle(
    color: AppColors.profilePageTitleValue,
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    fontWeight: FontWeight.w400);
var kFilledButtonText = TextStyle(
    color: AppColors.white,
    fontSize: SizeConfig.widthMultiplier! * 8,
    fontWeight: FontWeight.w600);
var kFilledButtonTextHome = TextStyle(
    color: AppColors.white,
    fontSize: SizeConfig.widthMultiplier! * 6,
    fontWeight: FontWeight.w400);
var kFilledButtonProfileText = TextStyle(
    color: AppColors.white,
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    fontWeight: FontWeight.w500);
var kFilledButtonWithIconText = TextStyle(
    color: AppColors.white,
    fontSize: SizeConfig.textMultiplier! * 2.5,
    fontWeight: FontWeight.w500);
var kNotificationTitle = TextStyle(
    color: AppColors.black,
    fontSize: SizeConfig.textMultiplier! * 3,
    fontWeight: FontWeight.w600);
var kNotificationDesc = TextStyle(
    color: AppColors.notificationDesc,
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    fontWeight: FontWeight.w400);
var kNotificationSubTitle = TextStyle(
    color: AppColors.profilePageTitle,
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    fontWeight: FontWeight.w400);
var kNotificationSub = TextStyle(
    color: AppColors.notificationSub,
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    fontWeight: FontWeight.w500);
var kContactnDesc = TextStyle(
    color: Colors.white,
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    fontWeight: FontWeight.w400);
var kQrSheetQ = TextStyle(
    color: AppColors.black,
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.w500);
var kQrSheetTitle = TextStyle(
    color: AppColors.black,
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.w400);
var kQrSheetValue = TextStyle(
    color: AppColors.black,
    fontSize: SizeConfig.widthMultiplier! * 5,
    fontWeight: FontWeight.w700);

//MansionFilterObject
var kMansionFilterObjectName = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 4.7,
    color: AppColors.mansionFilterObjectName,
    fontWeight: FontWeight.w700);
var kMansionFilterObjectId = TextStyle(
    fontSize: SizeConfig.widthMultiplier! * 4.5,
    color: AppColors.mansionFilterObjectId,
    fontWeight: FontWeight.w500);
