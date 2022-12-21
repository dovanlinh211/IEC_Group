import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:iec_group/constants/app_string.dart';

class AccessToken {
  Future<String> getUserName() async {
    final pref = await SharedPreferences.getInstance();
    dynamic userData = pref.get(SharedPrefConstants.userName);
    var data = json.decode(userData) ;

    return data[SharedPrefConstants.userName];
  }

  Future<void> setUserName(String username) async {
    final pref = await SharedPreferences.getInstance();
    var userAuthData = json.encode({
      SharedPrefConstants.userName: username,
    });
    pref.setString(SharedPrefConstants.userName, userAuthData);
  }
}
