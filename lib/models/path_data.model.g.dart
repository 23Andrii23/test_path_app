// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PathData _$PathDataFromJson(Map<String, dynamic> json) => _PathData(
      id: json['id'] as String,
      field: (json['field'] as List<dynamic>).map((e) => e as String).toList(),
      start: CustomPoint.fromJson(json['start'] as Map<String, dynamic>),
      end: CustomPoint.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PathDataToJson(_PathData instance) => <String, dynamic>{
      'id': instance.id,
      'field': instance.field,
      'start': instance.start,
      'end': instance.end,
    };
