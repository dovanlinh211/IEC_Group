// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginContainer _$LoginContainerFromJson(Map<String, dynamic> json) =>
    LoginContainer(
      Login.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginContainerToJson(LoginContainer instance) =>
    <String, dynamic>{
      'data': instance.userData,
    };
