import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iec_group/api_calls/logout/request/logout_request.dart';
import 'package:iec_group/refresh_token/store/refresh_token_store.dart';

import '../request/logout_repository.dart';

// Include generated file
part 'logout_store.g.dart';

// This is the class used by rest of your codebase
class LogoutStore = _LogoutStore with _$LogoutStore;

// The store-class
abstract class _LogoutStore with Store {
  final _logoutRepository = LogoutRepository();
  RefreshTokenStore store = RefreshTokenStore();

  @observable
  LogoutResponse val;

  @observable
  bool hasError = false;

  @observable
  bool isLoading = false;

  @observable
  ObservableFuture<LogoutResponse> logoutResponse;

  @action
  Future<LogoutResponse> logout() async {
    isLoading = true;
    final pref = await SharedPreferences.getInstance();
    var accessToken = await store.getAccessToken();
    logoutResponse =
        await ObservableFuture(_logoutRepository.login(accessToken))
            .then((value) {
      if (value.hasError) {
        isLoading = false;
        val = value;
        hasError = true;
      } else {
        isLoading = false;
        hasError = false;
        pref.clear();
      }
    });

    return logoutResponse;
  }
}
