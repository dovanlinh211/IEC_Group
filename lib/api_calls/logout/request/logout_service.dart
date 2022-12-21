import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iec_group/api_calls/logout/store/logout_store.dart';
import 'package:iec_group/constants/app_string.dart';
import 'package:iec_group/login_page/screen/login_page.dart';
import 'package:iec_group/shared_widgets/username_wrong_alert.dart';

logoutService(
  context,
  String id,
  int statusCode,
) async {
  LogoutStore store = Provider.of<LogoutStore>(context, listen: false);
  store.isLoading = true;
  SharedPreferences preferences = await SharedPreferences.getInstance();
  statusCode != 401 ? await store.logout() : null;
  if (store.hasError == false || statusCode == 401) {
    await preferences.clear();
    store.isLoading = false;

    Navigator.pushReplacementNamed(context, 'login_page');
  } else {
    print("error logout");
    // ackAlert(context, store.val.errorMessage.toString());
  }
}
