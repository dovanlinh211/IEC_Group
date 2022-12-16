import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_string.dart';
import 'package:iec_group/constants/custom_sizeconfig.dart';
import 'package:iec_group/constants/size_config.dart';
import 'package:iec_group/login_page/entity/login_body_model.dart';
import 'package:iec_group/login_page/store/login_store.dart';
import 'package:iec_group/shared_widgets/custom_progress_indicator.dart';
import 'package:iec_group/shared_widgets/mainbutton.dart';
import 'package:iec_group/splash_screen/splash_background.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mobx/mobx.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = 'login_page';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  LoginStore loginStore = LoginStore();
  BottomNavStore store = BottomNavStore();
  String appName = "";

  @override
  void initState() {

    getAppName().then((value) => setState(() {
          appName = value;
        }));
    store = Provider.of<BottomNavStore>(context, listen: false);
    store.currentIndex = 0;
    loginStore = Provider.of<LoginStore>(context, listen: false);
    clearSharedPref();

    super.initState();
  }

  clearSharedPref() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }

  @override
  Widget build(BuildContext context) {
    CustomSizeConfig().init(context);
    final width = CustomSizeConfig.safeBlockHorizontal;
    final height = CustomSizeConfig.safeBlockVertical;

    return Stack(
      children: [
        body(),
        Observer(
          builder: (context) => Visibility(
              visible: loginStore.isLoading,
              child: CustomProgressIndicatorWidget()),
        ),
      ],
    );
  }

  Widget body() {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: [
            SplashBackground(context),
            SafeArea(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: SizeConfig.widthMultiplier * 90,
                      child: Image.asset(
                        taiyouName,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 5,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 18,
                    child: Image.asset(
                      taiyouAbstract,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 50, left: 50),
                    child: Text(
                      getTranslated(context, 'intro'),
                      style: kIntroTextStyle,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  LoginForm(),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 6,
                  ),
                  Text(
                    appName,
                    style: kSubTextStyle,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Future<String> getAppName() async {
    String version = "";
    String appName = "";
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appName = packageInfo.appName;
    version = packageInfo.version;
    if (appName.contains("UAT")) appName = appName.replaceAll("UAT", "");
    return "$appName $version";
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  int count = 0;
  LoginStore loginStore = LoginStore();
  late TextEditingController _textController;
  late TextEditingController _passwordController;
  bool _hasNameError = false;
  bool _hasPasswordError = false;
  bool _nameObsceure = false;
  bool _passwordObsceure = true;
  LoginModel loginData = LoginModel(
      clientId: ReleaseMode.debug
          ? AppConstantsDebug.clientId
          : AppConstantsUAT.clientId,
      clientSecret: ReleaseMode.debug
          ? AppConstantsDebug.clientSecret
          : AppConstantsUAT.clientSecret,
      username: "",
      grantType: AppConstants.grantTypePassword,
      password: "",
      refreshToken: "");
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordController = new TextEditingController();
    _textController = new TextEditingController();
    loginStore = Provider.of<LoginStore>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            inputField(
                Icon(Icons.person),
                getTranslated(context, 'username'),
                _textController,
                _nameObsceure,
                context,
                TextInputAction.next,
                "name"),
            Visibility(
                visible: _hasNameError,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    getTranslated(context, 'nameCannotBeEmpty'),
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: CustomSizeConfig.safeBlockHorizontal * 3),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: bottom),
              child: inputField(
                  Icon(Icons.vpn_key),
                  getTranslated(context, 'password'),
                  _passwordController,
                  _passwordObsceure,
                  context,
                  TextInputAction.done,
                  "password"),
            ),
            Visibility(
                visible: _hasPasswordError,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    getTranslated(context, 'passwordCannotBeEmpty'),
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: CustomSizeConfig.safeBlockHorizontal * 3),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            filledButton(getTranslated(context, 'login'), kFilledButtonText,
                AppColors.primaryColor, AppColors.white, () async {
              checkLogin();
            }, 20, SizeConfig.heightMultiplier * 10),
          ],
        ),
      ),
    );
  }

  void checkLogin() {
    setState(() {
      if (_textController.text.isEmpty && _passwordController.text.isEmpty) {
        setState(() {
          _hasNameError = true;
          _hasPasswordError = true;
        });
      } else if (_textController.text.isNotEmpty &&
          _passwordController.text.isEmpty) {
        setState(() {
          _hasNameError = false;
          _hasPasswordError = true;
        });
      } else if (_textController.text.isEmpty &&
          _passwordController.text.isNotEmpty) {
        setState(() {
          _hasNameError = true;
          _hasPasswordError = false;
        });
      } else {
        setState(() {
          _hasNameError = false;
          _hasPasswordError = false;
        });
        count++;
        loginData = LoginModel(
            clientId: loginData.clientId,
            clientSecret: loginData.clientSecret,
            username: _textController.text,
            password: _passwordController.text,
            grantType: loginData.grantType);
        loginService(context, loginData, loginStore);
      }
    });
  }

  Widget inputField(Icon icon, String hint, TextEditingController controller,
      bool obsecure, context, TextInputAction action, String type) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppNumbers.buttonRadius * 2),
        color: AppColors.textFieldBackground,
      ),
      margin: EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        textInputAction: action,
        controller: controller,
        obscureText: obsecure,
        style: kFormHint,
        decoration: InputDecoration(
            hintStyle: kHintStyle,
            fillColor: AppColors.textFieldBackground,
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppNumbers.buttonRadius * 2),
              borderSide: BorderSide(
                color: AppColors.textFieldBackground,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppNumbers.buttonRadius * 2),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 0.0,
              ),
            ),
            prefixIcon: Padding(
              child: IconTheme(
                data: IconThemeData(
                  color: AppColors.grey,
                ),
                child: icon,
              ),
              padding: EdgeInsets.only(left: 10, right: 15),
            )),
      ),
    );
  }
}
