// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forward_geocode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForwardGeocodeResponse _$ForwardGeocodeResponseFromJson(
        Map<String, dynamic> json) =>
    ForwardGeocodeResponse(
      meta: ResponseMetadata.fromJson(json['meta'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForwardGeocodeResponseToJson(
    ForwardGeocodeResponse instance) {
  final val = <String, dynamic>{
    'meta': instance.meta.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'addresses', instance.addresses?.map((e) => e.toJson()).toList());
  return val;
}
