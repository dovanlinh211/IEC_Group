class LoginModel {
  final String? username;
  final String? password;
  final String? clientId;
  final String? clientSecret;
  final String? grantType;
  final String? refreshToken;

  LoginModel({
    this.username,
    this.password,
    this.clientId,
    this.clientSecret,
    this.grantType,
    this.refreshToken
  });
}
