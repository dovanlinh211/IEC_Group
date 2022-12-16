// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogoutContainer _$LogoutContainerFromJson(Map<String, dynamic> json) =>
    LogoutContainer(
      Logout.fromJson(json['success'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LogoutContainerToJson(LogoutContainer instance) =>
    <String, dynamic>{
      'success': instance.userData,
    };
