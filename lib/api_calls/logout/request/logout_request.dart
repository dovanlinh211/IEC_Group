import 'dart:convert';

import 'package:iec_group/api_calls/error_container/error_container.dart';
import 'package:iec_group/api_calls/request.dart';

import '../../request_client.dart';
import '../../response.dart';

class LogoutRequest implements Request {
  static const _version = 'v1';
  static const _endPoint = 'logout';

  String? _accessToken;

  LogoutRequest(String accessToken) {
    _accessToken = accessToken;
  }

  @override
  String getBody() {
    final bodyMap = _getBodyMap();
    return Request.urlEncodeForFormData(bodyMap);
  }

  Map<String, String> _getBodyMap() {
    final map = <String, String>{};
    return map;
  }


  @override
  Map<String, String> getHeaders() {
    final headers = <String, String>{};
    // headers['Content-Type'] = 'application/json';
    headers['Accept'] = 'application/json';
    headers['Authorization'] = 'Bearer ' + _accessToken.toString()  ;
    print(headers.toString());
    return headers;
  }

  @override
  String getUrl() {
    print(Request.createUrl(_version, _endPoint));
    return Request.createUrl(_version, _endPoint);
  }

  Future<LogoutResponse> execute() async {
    final result = LogoutResponse();
    await RequestClient()
        .post(getUrl(), getHeaders(), getBody())
        .then((response) {
      if (response.statusCode == 200) {
        final dynamic object = json.decode(response.body);
        print(object.toString());
        result
          ..hasError = false
          ..errorMessage = '';
      } else {
        final dynamic object = json.decode(response.body);
        final errorMessage =
            ErrorContainer.fromJson(object as Map<String, dynamic>);
        print(errorMessage.errorList.first.title);

        result
          ..hasError = true
          ..errorMessage = errorMessage.errorList[0].title!;
      }
    }).catchError((Object error) {
      result
        ..hasError = true
        ..errorMessage = Response.getErrorMessage(error);
    });

    return result;
  }

}

class LogoutResponse extends Response {
  LogoutResponse(
      {this.hasError = false, this.errorMessage = ''});

  bool hasError;
  String errorMessage;
}
