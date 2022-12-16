import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:iec_group/constants/app_string.dart';
import 'package:iec_group/dashboard_page/has_checked/store/has_checked_store.dart';
import 'package:iec_group/login_page/entity/login_body_model.dart';
import 'package:iec_group/login_page/request/login_request.dart';

import '../request/login_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Include generated file
part 'login_store.g.dart';

// This is the class used by rest of your codebase
class LoginStore = _LoginStore with _$LoginStore;

// The store-class
abstract class _LoginStore with Store {
  final _loginnRepository = LoginRepository();

//auth variables
  @observable
  String accesToken;

  @observable
  String refreshToken;

  @observable
  LoginResponse val;
  @observable
  String userName;

  @observable
  String type;
  @observable
  String email;
  @observable
  bool isVerified;
  @observable
  int expiresIn;

  @observable
  var userAuthData;
  @observable
  var autoLoginStatus;

  HasCheckedStore hasChecked = HasCheckedStore();

//error and loading
  @observable
  bool isLoading = false;

  GetProfileStore getProfileStore = GetProfileStore();

  @observable
  bool hasError;
  @observable
  ObservableFuture<LoginResponse> loginResponse;

  Observable<bool> get isAuth {
    return Observable(accesToken != null);
  }

  checkHasChecked() async {
    await hasChecked.hasChecked(false);
  }

  callGetProfile() async {
    await getProfileStore.getProfile(false);
  }

  @action
  Future<LoginResponse> login(LoginModel data) async {
    final pref = await SharedPreferences.getInstance();
    isLoading = true;
    loginResponse =
        await ObservableFuture(_loginnRepository.login(data)).then((value) {
      if (value.hasError) {
        val = value;
        isLoading = false;
        hasError = true;
        return;
      } else {
        isLoading = false;
        hasError = false;
        userName = data.username;
        accesToken = value.response.accessToken;
        refreshToken = value.response.refreshToken;
        expiresIn = value.response.expiresIn;
        print('login access token : $accesToken');
        userAuthData = json.encode({
          SharedPrefConstants.token: accesToken,
          SharedPrefConstants.refreshToken: refreshToken,
          SharedPrefConstants.expiresIn: expiresIn,
          SharedPrefConstants.issuedTime: value.response.issuedTime,
        });
        pref.setString(SharedPrefConstants.userAuthData, userAuthData);
        return;
      }
    });

    return loginResponse;
  }

  autoLogin() async {
    final pref = await SharedPreferences.getInstance();
    var userData = pref.get(SharedPrefConstants.userAuthData);

    if (userData != null) {
      var data = json.decode(userData);

      if (data[SharedPrefConstants.token] == null) autoLoginStatus = false;

      return data[SharedPrefConstants.token].toString().isEmpty
          ? autoLoginStatus = false
          : autoLoginStatus = true;
    } else {
      autoLoginStatus = false;
    }
  }

  @action
  Future<void> logout() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
