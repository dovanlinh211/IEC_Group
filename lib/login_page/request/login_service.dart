import 'package:flutter/material.dart';
import 'package:iec_group/login_page/store/login_store.dart';
import 'package:iec_group/shared_widgets/username_wrong_alert.dart';

import '../entity/login_body_model.dart';

loginService(context, LoginModel loginData, LoginStore store) async {
  await store.login(loginData);

  if (store.hasError == false) {
    print(" login succes");

    Navigator.pushReplacementNamed(context, 'home_page');
  } else {
    print("login failed");
    print('${store.val?.errorMessage} Error login message');
    // ackAlert(context, store.val.errorMessage.toString());
  }
}
