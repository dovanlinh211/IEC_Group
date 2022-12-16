


import 'logout_request.dart';


class LogoutRepository {
  factory LogoutRepository() {
    return _instance;
  }

  LogoutRepository._internal();

  static final LogoutRepository _instance = LogoutRepository._internal();


  Future<LogoutResponse> login(String accessT) async {
    final request = LogoutRequest(accessT);
    final response = await request.execute();
    return response;
  }
//
// Future<LoginTypeResponse> getLoginType(String accesstoken) async {
//   final request = await LoginTypeRequest(accessToken: accesstoken).execute();
//   return request;
// }
}
