import 'package:json_annotation/json_annotation.dart';
import 'package:radar_api/radar_api.dart';

part 'forward_geocode.g.dart';

@JsonSerializable()
class ForwardGeocodeResponse extends RadarResponse {
  const ForwardGeocodeResponse({
    required super.meta,
    this.addresses,
  });

  /// Converts a [Map] to an [ForwardGeocodeResponse]
  factory ForwardGeocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ForwardGeocodeResponseFromJson(json);

  /// Converts a [ForwardGeocodeResponse] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$ForwardGeocodeResponseToJson(this);

  final List<Address>? addresses;

  @override
  List<Object?> get props => [meta, addresses];
}
