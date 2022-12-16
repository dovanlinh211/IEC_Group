import 'package:json_annotation/json_annotation.dart';
part 'verify_user_error.g.dart';

@JsonSerializable()
class VerifyUserError {
  VerifyUserError({
    this.title,
    this.detail,
  });

  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'detail')
  final String? detail;

  factory VerifyUserError.fromJson(Map<String, dynamic> json) => _$VerifyUserErrorFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyUserErrorToJson(this);


}