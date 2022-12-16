import 'package:json_annotation/json_annotation.dart';
import 'logout_model.dart';

part 'logout_container.g.dart';

@JsonSerializable()
class LogoutContainer {
  LogoutContainer(this.userData);

  @JsonKey(name: 'success')
  final Logout userData;

  factory LogoutContainer.fromJson(Map<String, dynamic> json) =>
      _$LogoutContainerFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutContainerToJson(this);
}