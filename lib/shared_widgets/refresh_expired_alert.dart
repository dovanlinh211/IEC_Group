import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/app_text_style.dart';
import 'package:iec_group/login_page/screen/login_page.dart';

Future ackAlertRefreshExpire(context, String a) async{
  final pref = await SharedPreferences.getInstance();
  return showDialog(
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
                  Icons.error_outline_rounded,
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
                  a,
                  textAlign: TextAlign.center,
                  style: kAlertDesc,
                ),
                Text(
                  "Please Login Again",
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
                      child: Text(
                        "Login Again",
                        style: kProfileTitle,
                      ),
                      onPressed: () async {
                        pref.clear();
                        Navigator.popUntil(context, (route) => route.isFirst);
                        Navigator.pushReplacementNamed(context, LoginPage.routeName);
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
