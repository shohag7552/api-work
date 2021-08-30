import 'package:begining/Model/data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listData.g.dart';

@JsonSerializable()
class ListData {
  List<Data> data;
  ListData({this.data});

  factory ListData.fromJson(Map<String, dynamic> json) =>
      _$ListDataFromJson(json);
  Map<String, dynamic> toJson() => _$ListDataToJson(this);
}
