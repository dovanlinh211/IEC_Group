import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/image_path.dart';
import 'package:iec_group/constants/size_config.dart';

Widget filledButton(String text, TextStyle style, Color fillColor,
    Color textColor, void function(), double padding, double height,
    {String type = "normal"}) {
  return Container(
    margin: EdgeInsets.only(left: padding / 2, right: padding / 2),
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
    ),
    child: TextButton(
      child: Container(
        height: SizeConfig.heightMultiplier * 8,
        width: double.infinity,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
        ),
        child: Center(
          child: Container(
            width: SizeConfig.widthMultiplier! * 80,
            child: type == "normal"
                ? Text(
                    text,
                    style: style,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: SizeConfig.widthMultiplier! * 8,
                        child: Image.asset(viewIcon),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier! * 2,
                      ),
                      Text(
                        text,
                        style: style,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
          ),
        ),
      ),
      onPressed: () {
        function();
      },
    ),
  );
}

Widget filledButtonWithIcon(
  String text,
  TextStyle style,
  Color fillColor,
  Color textColor,
  void function(),
  double padding,
  double height,
  Widget icon,
) {
  return Container(
    margin: EdgeInsets.only(left: padding / 2, right: padding / 2),
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
    ),
    child: TextButton.icon(
      icon: icon,
      onPressed: function,
      label: Container(
        height: SizeConfig.heightMultiplier * 8,
        width: double.infinity,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
        ),
        child: Center(
          child: Container(
            width: SizeConfig.widthMultiplier * 80,
            child: Text(
              text,
              style: style,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget filledButtonModalSheet(String text, TextStyle style, Color fillColor,
    Color textColor, void function(), double padding, double height) {
  bool _buttonPressed = false;
  return TextButton(
    child: Container(
      height: SizeConfig.heightMultiplier * 8,
      width: double.infinity,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
      ),
      child: Center(
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.center,
        ),
      ),
    ),
    onPressed: () {
      function();
    },
  );
}
