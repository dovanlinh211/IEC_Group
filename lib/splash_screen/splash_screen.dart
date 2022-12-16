import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_string.dart';
import 'package:iec_group/constants/size_config.dart';
import 'package:iec_group/home_page/home_page.dart';
import 'package:iec_group/login_page/screen/login_page.dart';
import 'package:iec_group/login_page/store/login_store.dart';
import 'package:iec_group/splash_screen/splash_background.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash_Screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  LoginStore loginStore = LoginStore();
  // HasCheckedStore hasCheckedStore = HasCheckedStore();
  bool checkLogin = false;
  bool apiChecked = true;
  bool autoLogin;
  var userData;

  //store
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);

    if (state == AppLifecycleState.resumed ||
        state == AppLifecycleState.inactive) {}
  }

  @override
  void didChangeDependencies() async {
    // hasCheckedStore = Provider.of<HasCheckedStore>(context, listen: false);
    await getAccessToken();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  
  getAccessToken() async {
    final pref = await SharedPreferences.getInstance();
    userData = pref.get(SharedPrefConstants.userAuthData);
  }

  _navigate() async {
    checkLogin = false;
    if (userData == null) {
      checkLogin = false;
    } else {
      var data = json.decode(userData);
      if (data[SharedPrefConstants.token] == null) checkLogin = false;
      data[SharedPrefConstants.token].toString().isEmpty
          ? checkLogin = false
          : checkLogin = true;
    }
    if (checkLogin) {
      Future.delayed(Duration(seconds: 2), () async {
        Navigator.pushReplacementNamed(context, HomePage.routeName);
      });
    } else {
      Future.delayed(Duration(seconds: 2), () async {
        Navigator.pushReplacementNamed(context, LoginPage.routeName);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SplashBackground(context),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: SizeConfig.widthMultiplier! * 90,
              child: Image.asset(
                taiyouName,
              ),
            ),
          )),
        ],
      )),
    );
  }
}
