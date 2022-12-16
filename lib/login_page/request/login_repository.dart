import 'package:iec_group/refresh_token/request/refresh_token_request.dart';

import '../entity/login_body_model.dart';
import 'login_request.dart';

class LoginRepository {
  factory LoginRepository() {
    return _instance;
  }

  LoginRepository._internal();

  static final LoginRepository _instance = LoginRepository._internal();

  Future<LoginResponse> login(LoginModel data) async {
    final request = LoginRequest(data);
    final response = await request.execute();
    return response;
  }

  Future<LoginResponse> refreshToken(LoginModel data) async {
    final request = RefreshTokenRequest(data);
    final response = await request.execute();
    return response;
  }
}
