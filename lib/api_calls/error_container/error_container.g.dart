// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorContainer _$ErrorContainerFromJson(Map<String, dynamic> json) =>
    ErrorContainer(
      (json['errors'] as List<dynamic>)
          .map((e) => VerifyUserError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorContainerToJson(ErrorContainer instance) =>
    <String, dynamic>{
      'errors': instance.errorList,
    };

SingleErrorContainer _$SingleErrorContainerFromJson(
        Map<String, dynamic> json) =>
    SingleErrorContainer(
      VerifyUserError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleErrorContainerToJson(
        SingleErrorContainer instance) =>
    <String, dynamic>{
      'error': instance.error,
    };
