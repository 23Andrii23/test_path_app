// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MainResponse _$MainResponseFromJson(Map<String, dynamic> json) =>
    _MainResponse(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => PathData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainResponseToJson(_MainResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };
