import 'dart:convert';

import 'package:iec_group/api_calls/error_container/error_container.dart';
import 'package:iec_group/api_calls/request.dart';
import 'package:iec_group/api_calls/request_client.dart';
import 'package:iec_group/api_calls/response.dart';
import 'package:iec_group/login_page/entity/login_body_model.dart';
import 'package:iec_group/login_page/entity/login_container.dart';
import 'package:iec_group/login_page/request/login_request.dart';
import '../entity/expired_refrestoken_container.dart';

class RefreshTokenRequest implements Request {
  static const _version = 'v1';
  static const _endPoint = 'login';
  static const _keyRefreshToken = 'refreshToken';
  static const _keyClientID = 'clientId';
  static const _keyClientSecret = 'clientSecret';
  static const _keyGrantType = 'grantType';

  String? _refreshToken;
  String? _clientID;
  String? _clientSecret;
  String? _grantType;

  RefreshTokenRequest(LoginModel model) {
    _refreshToken = model.refreshToken;
    _clientID = model.clientId;
    _clientSecret = model.clientSecret;
    _grantType = model.grantType;
  }

  @override
  String getBody() {
    final body = getJson();
    return body;
  }

  String getJson() {
    return jsonEncode({
      _keyRefreshToken: _refreshToken,
      _keyClientID: _clientID,
      _keyClientSecret: _clientSecret,
      _keyGrantType: _grantType,
    });
  }

  @override
  Map<String, String> getHeaders() {
    final headers = <String, String>{};
    headers['Content-Type'] = 'application/json';
    return headers;
  }

  @override
  String getUrl() {
    return Request.createUrl(_version, _endPoint);
  }

  Future<LoginResponse> execute() async {
    final result = LoginResponse();
    await RequestClient()
        .post(getUrl(), getHeaders(), getBody())
        .then((response) {
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        final dynamic object = json.decode(response.body);
        final code = LoginContainer.fromJson(object as Map<String, dynamic>);
        code.userData.issuedTime = DateTime.now().millisecondsSinceEpoch;
        result
          ..hasError = false
          ..errorMessage = ''
          ..response = code.userData;
      } else if (response.statusCode == 401) {
        final dynamic object = json.decode(response.body);
        final errorMessage =
            SingleErrorContainer.fromJson(object as Map<String, dynamic>);

        result
          ..hasError = true
          ..errorMessage = errorMessage.error.detail!;
      }else if (response.statusCode == 500) {
        final dynamic object = json.decode(response.body);
        final errorMessage =
        RefreshTokenErrorContainer.fromJson(object as Map<String, dynamic>);

        result
          ..hasError = true
          ..errorMessage = errorMessage.errorList[0].detail;
      }
      else {
        final dynamic object = json.decode(response.body);
        final errorMessage =
            ErrorContainer.fromJson(object as Map<String, dynamic>);

        result
          ..hasError = true
          ..errorMessage = errorMessage.errorList[0].detail!;
      }
    }).catchError((Object error) {
      result
        ..hasError = true
        ..errorMessage = Response.getErrorMessage(error);
    });

    return result;
  }
}
