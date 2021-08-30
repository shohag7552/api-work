// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListData _$ListDataFromJson(Map<String, dynamic> json) {
  return ListData(
    data: (json['data'] as List<dynamic>)
        .map((e) => Data.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ListDataToJson(ListData instance) => <String, dynamic>{
      'data': instance.data,
    };
