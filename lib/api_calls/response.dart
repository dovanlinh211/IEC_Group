import 'dart:io';
abstract class Response {
  static const defaultErrorMessage = '';

  static const defaultConnectionError = 'インターネットの接続がありません。';

  static String getErrorMessage(Object error) {
    String errorMessage;
    if (error is SocketException) {
      errorMessage = Response.defaultConnectionError;
    } else {
      errorMessage = Response.defaultErrorMessage;
    }
    return errorMessage;
  }
}
