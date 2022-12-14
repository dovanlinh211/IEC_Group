import 'package:json_annotation/json_annotation.dart';

part 'logout_model.g.dart';

@JsonSerializable()
class Logout {
  Logout({
    required this.success
  });
  @JsonKey(name: 'success')
  late final String success;

  factory Logout.fromJson(Map<String, dynamic> json) => _$LogoutFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutToJson(this);
}