import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/app_text_style.dart';
import 'package:iec_group/constants/size_config.dart';

Widget noInternetConnection(context){

  return Container(
    height: 200,
    width: SizeConfig.widthMultiplier!*60,
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
    ),
    child: Column(children: [
      Icon(Icons.error_outline_rounded, size: 50,color: AppColors
          .buttonRed,),
      SizedBox(height: 10,),
      Text("Error", textAlign: TextAlign
          .center,style:
      kProfileTitleValue,),
      SizedBox(height: 5,),
      Text("No internet Error", textAlign: TextAlign.center,style: kAlertDesc,),
      SizedBox(height: 5,),

    ],),
  );


}