// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      countryFlag: json['countryFlag'] as String?,
      county: json['county'] as String?,
      distance: json['distance'] as num?,
      borough: json['borough'] as String?,
      city: json['city'] as String?,
      number: json['number'] as String?,
      neighborhood: json['neighborhood'] as String?,
      postalCode: json['postalCode'] as String?,
      stateCode: json['stateCode'] as String?,
      state: json['state'] as String?,
      street: json['street'] as String?,
      layer: json['layer'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      placeLabel: json['placeLabel'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('geometry', instance.geometry?.toJson());
  writeNotNull('country', instance.country);
  writeNotNull('countryCode', instance.countryCode);
  writeNotNull('countryFlag', instance.countryFlag);
  writeNotNull('county', instance.county);
  writeNotNull('distance', instance.distance);
  writeNotNull('borough', instance.borough);
  writeNotNull('city', instance.city);
  writeNotNull('number', instance.number);
  writeNotNull('neighborhood', instance.neighborhood);
  writeNotNull('postalCode', instance.postalCode);
  writeNotNull('stateCode', instance.stateCode);
  writeNotNull('state', instance.state);
  writeNotNull('street', instance.street);
  writeNotNull('layer', instance.layer);
  writeNotNull('formattedAddress', instance.formattedAddress);
  writeNotNull('placeLabel', instance.placeLabel);
  return val;
}
