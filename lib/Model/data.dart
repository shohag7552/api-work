import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int id;
  String name;
  int year;
  String color;
  String pantone_value;
  Data({this.id, this.name, this.year, this.color, this.pantone_value});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
