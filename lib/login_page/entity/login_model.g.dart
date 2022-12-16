// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      tokenType: json['tokenType'] as String,
      expiresIn: json['expiresIn'] as int,
      refreshToken: json['refreshToken'] as String,
      accessToken: json['accessToken'] as String,
    )..issuedTime = json['issuedTime'] as int;

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'refreshToken': instance.refreshToken,
      'accessToken': instance.accessToken,
      'issuedTime': instance.issuedTime,
    };
