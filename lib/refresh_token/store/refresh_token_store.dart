import 'dart:convert';
import 'package:iec_group/constants/app_string.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iec_group/login_page/entity/login_body_model.dart';
import 'package:iec_group/login_page/request/login_repository.dart';
import 'package:iec_group/constants/app_strings.dart';
import 'package:iec_group/login_page/request/login_request.dart';

// Include generated file
part 'refresh_token_store.g.dart';

// This is the class used by rest of your codebase
class RefreshTokenStore = _RefreshTokenStore with _$RefreshTokenStore;

// The store-class
abstract class _RefreshTokenStore with Store {
  final _loginnRepository = LoginRepository();

  // ErrorContainer errorStore = ErrorStore();

  @observable
  String refreshToken;
  @observable
  String accessToken;
  @observable
  int expiresIn;

  @observable
  var userAuthData;

//error and loading
  @observable
  bool isLoading = false;
  @observable
  bool hasError = false;

  @observable
  ObservableFuture<LoginResponse> loginResponse;
  @observable
  LoginResponse loginResponseData;

  @action
  Future<bool> checkRefreshToken() async {
    final pref = await SharedPreferences.getInstance();
    var userData = pref.get(SharedPrefConstants.userAuthData);
    var data = json.decode(userData);
    refreshToken = data[SharedPrefConstants.refreshToken];
    var issuedTime = data[SharedPrefConstants.issuedTime];
    accessToken = data[SharedPrefConstants.token];
    expiresIn = data[SharedPrefConstants.expiresIn];
    if (accessToken != null && accessToken.isNotEmpty) {
      return issuedTime + expiresIn * 1000 <
          DateTime.now().millisecondsSinceEpoch;
    }
    return false;
  }

  @action
  // ignore: missing_return
  Future<String> getAccessToken() async {
    var isLoginExpired = await checkRefreshToken();
    final pref = await SharedPreferences.getInstance();
    var data = LoginModel(
        clientId: ReleaseMode.debug?AppConstantsDebug.clientId:AppConstantsUAT.clientId,
        clientSecret: ReleaseMode.debug?AppConstantsDebug
            .clientSecret:AppConstantsUAT.clientSecret,
        grantType: AppConstants.grantTypeAccessToken,
        refreshToken: refreshToken);
    if (isLoginExpired && refreshToken.isNotEmpty) {
      loginResponse =
          await ObservableFuture(_loginnRepository.refreshToken(data))
              .then((value) {
        if (value.hasError) {
          loginResponseData = value;
        } else {
          accessToken = value.response.accessToken;
          refreshToken = value.response.refreshToken;
          expiresIn = value.response.expiresIn;
          userAuthData = json.encode({
            SharedPrefConstants.token: accessToken,
            SharedPrefConstants.refreshToken: refreshToken,
            SharedPrefConstants.expiresIn: expiresIn,
            SharedPrefConstants.issuedTime: value.response.issuedTime,
          });
          pref.setString(SharedPrefConstants.userAuthData, userAuthData);
        }
      });
      return accessToken;
    } else {
      return accessToken;
    }
  }
}
