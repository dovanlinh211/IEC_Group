import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/app_text_style.dart';

Future noInternetDialog(context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.all(0),
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
            ),
            width: MediaQuery.of(context).size.width / 1.1,
            padding: EdgeInsets.only(right: 6, left: 8, bottom: 5, top: 25),
            child: Column(
              children: [
                Icon(
                  Icons.signal_cellular_connected_no_internet_4_bar_sharp,
                  size: 50,
                  color: AppColors.buttonRed,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Error",
                  textAlign: TextAlign.center,
                  style: kProfileTitleValue,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "No Internet Connection",
                  textAlign: TextAlign.center,
                  style: kAlertDesc,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text("OK",
                          style: kProfileTitle),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
