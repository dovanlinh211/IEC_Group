import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class Login {
  Login({
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.accessToken,
  });

  @JsonKey(name: 'tokenType')
  final String tokenType;
  @JsonKey(name: 'expiresIn')
  final int expiresIn;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'accessToken')
  final String accessToken;
  int issuedTime;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
