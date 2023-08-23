// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => e as num)
          .toList(),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('coordinates', instance.coordinates);
  return val;
}
