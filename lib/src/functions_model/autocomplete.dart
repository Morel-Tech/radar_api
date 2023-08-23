import 'package:json_annotation/json_annotation.dart';
import 'package:radar_api/radar_api.dart';

part 'autocomplete.g.dart';

@JsonSerializable()
class AutocompleteResponse extends RadarResponse {
  const AutocompleteResponse({required super.meta, this.addresses});

  /// Converts a [Map] to an [AutocompleteResponse]
  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);

  /// Converts a [AutocompleteResponse] to a [Map]
  @override
  Map<String, dynamic> toJson() => _$AutocompleteResponseToJson(this);

  final List<Address>? addresses;

  @override
  List<Object?> get props => [addresses, meta];
}
