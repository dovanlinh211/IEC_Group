// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expired_refrestoken_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenErrorContainer _$RefreshTokenErrorContainerFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenErrorContainer(
      (json['errors'] as List<dynamic>)
          .map((e) => RefreshTokenSingleErrorContainer.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RefreshTokenErrorContainerToJson(
        RefreshTokenErrorContainer instance) =>
    <String, dynamic>{
      'errors': instance.errorList,
    };

RefreshTokenSingleErrorContainer _$RefreshTokenSingleErrorContainerFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenSingleErrorContainer(
      json['code'] as int,
      json['title'] as String,
      json['detail'] as String,
    );

Map<String, dynamic> _$RefreshTokenSingleErrorContainerToJson(
        RefreshTokenSingleErrorContainer instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'detail': instance.detail,
    };
