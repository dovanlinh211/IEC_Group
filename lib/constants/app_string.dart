class ReleaseMode {
  static const bool debug = false;
}

class AppConstantsDebug {
  static const String registerLink = 'dev';
  static const String clientId = '3';
  static const String url = 'https://birumane-app.com/api/';
  static const String clientSecret = 'B3iaFpsOk4qlg1CwLslkUFfvVt7HlWKw0UDA1HDd';
}

class AppConstantsUAT {
  // uat registerLink
  static const String clientId = '3';
  static const String url = 'https://uat-taiyou.ekbana.net/api/';
  static const String clientSecret = 'M4z6de60iPSBoz0Q8fYRVtCnigQFLVLI2MWBi2K2';
  static const String registerLink = 'uat';

}

class AppConstants {
  static const String grantTypePassword = 'password';
  static const String grantTypeAccessToken = 'refresh_token';
}

class SharedPrefConstants {
  static const String userAuthData = "userAuthData";
  static const String token = "token";
  static const String refreshToken = "refreshToken";
  static const String expiresIn = "expiresIn";
  static const String issuedTime = "issuedTime";
  static const String userName = "userName";
  static const String selectedMansionID = "selectedMansion";
  static const String selectedMansionManualID = "selectedMansionManual";
  static const String fcmTokenRegistered = "fcmTokenRegistered";
  static const String fcmToken = "fcmToken";
  static const String adminId = "adminId";
  static const String fromPN = "fromPN";
  static const String decryptedPath = "decryptedPath";
  static const String selectedMansionName = "selectedMansionName";
}
class FCMConstants {
  static const String token = "Z3qXXXVEm9w7dF6AgVxCZWL7Qv3MwUAp";
  static const String registerUrl =
      "https://us-central1-birumane-app.cloudfunctions.net/registerToken";

  static const String unRegisterUrl =
      "https://us-central1-birumane-app.cloudfunctions.net/unreigsterUser";
  static const String unRegisterUnsuccessfulMsg =
      "Unable to logout. Please try Again!";
}

