import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_text_style.dart';

import 'custom_progress_indicator.dart';

Widget showErrorMessage(String message, BuildContext context,
    Function onPressed, String text, bool _isDialogShowing) {
  Future.delayed(Duration(milliseconds: 0), () {
    if (message != null && message.isNotEmpty) {
      if (_isDialogShowing == false) {
        return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext ctx) {
            return WillPopScope(
              onWillPop: onWillPop,
              child: AlertDialog(
                contentPadding: EdgeInsets.only(top: 10),
                content: SingleChildScrollView(
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
                        message,
                        textAlign: TextAlign.center,
                        style: kAlertDesc,
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  Builder(builder: (BuildContext outerContext) {
                    return TextButton(
                      child: Text(
                        text,
                        style: kProfileTitle,
                      ),
                      onPressed: onPressed(),
                    );
                  }),
                ],
              ),
            );
          },
        );
      }
    }
  });

  return SizedBox.shrink();
}

Widget showLoginAgainErrorMessage(
  String message,
  BuildContext context,
  Function onPressed,
  String text,
  bool _isDialogShowing,
  // RegisterUnStore unRegisterStore
) {
  Future.delayed(Duration(milliseconds: 0), () {
    if (message != null && message.isNotEmpty) {
      if (_isDialogShowing == false) {
        _isDialogShowing = true;
        return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext ctx) {
            return WillPopScope(
              onWillPop: onWillPop,
              child: Stack(
                children: [
                  AlertDialog(
                    contentPadding: EdgeInsets.only(top: 10),
                    content: SingleChildScrollView(
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
                            message,
                            textAlign: TextAlign.center,
                            style: kAlertDesc,
                          ),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      Builder(builder: (BuildContext outerContext) {
                        return TextButton(
                          child: Text(
                            text,
                            style: kProfileTitle,
                          ),
                          onPressed: onPressed(),
                        );
                      }),
                    ],
                  ),
                  Observer(
                    builder: (context) {
                      return Visibility(
                        // visible: unRegisterStore.isLoading,
                        visible: false,
                        child: CustomProgressIndicatorWidget(),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        );
      }
    }
  });

  return SizedBox.shrink();
}

Future<bool> onWillPop() async{
  return false;
}
