import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/app_text_style.dart';

Widget filledButtonWithIcon(Widget icon, String text, Color fillColor,
    Color textColor, void function()) {
  double height = 45;
  return GestureDetector(
    child: InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
        ),
        padding: EdgeInsets.symmetric(horizontal: AppNumbers.padding / 2.5),
        height: height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            // Icon(icon, size: 18,),
            SizedBox(
              width: 5,
            ),
            Container(
              child: Text(
                text,
                style: kFilledButtonWithIconText,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    ),
    onTap: () {
      function();
    },
  );
}
