import 'package:json_annotation/json_annotation.dart';
import 'package:iec_group/api_calls/error_container/verify_user_error.dart';


part 'error_container.g.dart';

@JsonSerializable()
class ErrorContainer {
  ErrorContainer(this.errorList);

  @JsonKey(name: 'errors')
  final List<VerifyUserError> errorList;

  factory ErrorContainer.fromJson(Map<String, dynamic> json) =>
      _$ErrorContainerFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorContainerToJson(this);
}
@JsonSerializable()
class SingleErrorContainer {
  SingleErrorContainer(this.error);

  @JsonKey(name: 'error')
  final VerifyUserError error;

  factory SingleErrorContainer.fromJson(Map<String, dynamic> json) =>
      _$SingleErrorContainerFromJson(json);

  Map<String, dynamic> toJson() => _$SingleErrorContainerToJson(this);
}
