import 'package:flutter/material.dart';
import 'package:taiyou/constants/app_colors.dart';
import 'package:taiyou/constants/app_numbers.dart';
import 'package:taiyou/constants/app_text_style.dart';
import 'package:taiyou/constants/size_config.dart';
import 'package:taiyou/localization/get_text.dart';

Widget noInternetConnection(context){

  return Container(
    height: 200,
    width: SizeConfig.widthMultiplier*60,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
    ),
    child: Column(children: [
      Icon(Icons.error_outline_rounded, size: 50,color: AppColors
          .buttonRed,),
      SizedBox(height: 10,),
      Text(getTranslated(context, 'error'), textAlign: TextAlign
          .center,style:
      kProfileTitleValue,),
      SizedBox(height: 5,),
      Text(getTranslated(context, 'noInternetError'), textAlign: TextAlign.center,style: kAlertDesc,),
      SizedBox(height: 5,),

    ],),
  );


}