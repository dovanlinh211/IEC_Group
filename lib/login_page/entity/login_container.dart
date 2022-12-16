import 'package:json_annotation/json_annotation.dart';

import 'login_model.dart';

part 'login_container.g.dart';

@JsonSerializable()
class LoginContainer {
  LoginContainer(this.userData);

  @JsonKey(name: 'data')
  final Login userData;

  factory LoginContainer.fromJson(Map<String, dynamic> json) =>
      _$LoginContainerFromJson(json);

  Map<String, dynamic> toJson() => _$LoginContainerToJson(this);
}
