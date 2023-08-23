import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:radar_api/radar_api.dart';

part 'address.g.dart';

@JsonSerializable()
class Address extends Equatable {
  const Address({
    this.latitude,
    this.longitude,
    this.geometry,
    this.country,
    this.countryCode,
    this.countryFlag,
    this.county,
    this.distance,
    this.borough,
    this.city,
    this.number,
    this.neighborhood,
    this.postalCode,
    this.stateCode,
    this.state,
    this.street,
    this.layer,
    this.formattedAddress,
    this.placeLabel,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Address]
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  /// Converts a [Address] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  final num? latitude;
  final num? longitude;
  final Geometry? geometry;
  final String? country;
  final String? countryCode;
  final String? countryFlag;
  final String? county;
  final num? distance;
  final String? borough;
  final String? city;
  final String? number;
  final String? neighborhood;
  final String? postalCode;
  final String? stateCode;
  final String? state;
  final String? street;
  final String? layer;
  final String? formattedAddress;
  final String? placeLabel;

  @override
  List<Object?> get props {
    return [
      latitude,
      longitude,
      geometry,
      country,
      countryCode,
      countryFlag,
      county,
      distance,
      borough,
      city,
      number,
      neighborhood,
      postalCode,
      stateCode,
      state,
      street,
      layer,
      formattedAddress,
      placeLabel,
    ];
  }
}
