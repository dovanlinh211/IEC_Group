import 'dart:convert';

import 'package:iec_group/api_calls/error_container/error_container.dart';
import 'package:iec_group/api_calls/request.dart';
import 'package:iec_group/api_calls/request_client.dart';
import 'package:iec_group/api_calls/response.dart';
import 'package:iec_group/login_page/entity/login_container.dart';
import 'package:iec_group/login_page/entity/login_model.dart';

import '../entity/login_body_model.dart';

class LoginRequest implements Request {
  static const _version = 'v1';
  static const _endPoint = 'login';
  static const _keyUsername = 'username';
  static const _keyPassword = 'password';
  static const _keyClientID = 'clientId';
  static const _keyClientSecret = 'clientSecret';
  static const _keyGrantType = 'grantType';

  String _username;
  String _password;
  String _clientID;
  String _clientSecret;
  String _grantType;

  LoginRequest(LoginModel model) {
    _username = model.username;
    _password = model.password;
    _clientID = model.clientId;
    _clientSecret = model.clientSecret;
    _grantType = model.grantType;
  }

  @override
  String getBody() {
    final body = getJson();
    print(body);
    return body;
  }

  String getJson() {
    return jsonEncode({
      _keyUsername: _username,
      _keyPassword: _password,
      _keyClientID: _clientID,
      _keyClientSecret: _clientSecret,
      _keyGrantType: _grantType,
    });
  }

  @override
  Map<String, String> getHeaders() {
    final headers = <String, String>{};
    headers['Content-Type'] = 'application/json';
    print(headers.toString());
    return headers;
  }

  @override
  String getUrl() {
    print(Request.createUrl(_version, _endPoint));
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
          ..errorMessage = errorMessage.error.detail;
      } else {
        final dynamic object = json.decode(response.body);
        final errorMessage =
            ErrorContainer.fromJson(object as Map<String, dynamic>);

        result
          ..hasError = true
          ..errorMessage = errorMessage.errorList[0].detail;
      }
    }).catchError((Object error) {
      result
        ..hasError = true
        ..errorMessage = Response.getErrorMessage(error);
    });

    return result;
  }
}

class LoginResponse extends Response {
  LoginResponse({this.hasError = false, this.errorMessage = '', this.response});

  bool hasError;
  String errorMessage;
  Login response;
}
