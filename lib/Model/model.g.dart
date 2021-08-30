// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) {
  return Model(
    page: json['page'] as int,
    per_page: json['per_page'] as int,
    total: json['total'] as int,
    total_page: json['total_page'] as int,
  );
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'total': instance.total,
      'total_page': instance.total_page,
    };
