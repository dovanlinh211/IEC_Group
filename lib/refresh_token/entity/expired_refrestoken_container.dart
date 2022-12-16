import 'package:json_annotation/json_annotation.dart';


part 'expired_refrestoken_container.g.dart';

@JsonSerializable()
class RefreshTokenErrorContainer {
  RefreshTokenErrorContainer(this.errorList);

  @JsonKey(name: 'errors')
  final List<RefreshTokenSingleErrorContainer> errorList;

  factory RefreshTokenErrorContainer.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenErrorContainerFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenErrorContainerToJson(this);
}
@JsonSerializable()
class RefreshTokenSingleErrorContainer {
  RefreshTokenSingleErrorContainer(this.code, this.title, this.detail);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'detail')
  final String detail;

  factory RefreshTokenSingleErrorContainer.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenSingleErrorContainerFromJson(json);

  Map<String, dynamic> toJson() => _$RefreshTokenSingleErrorContainerToJson(this);
}
