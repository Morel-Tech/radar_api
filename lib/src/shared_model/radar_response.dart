import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:radar_api/radar_api.dart';

part 'radar_response.g.dart';

@JsonSerializable()
class RadarResponse extends Equatable {
  const RadarResponse({
    required this.meta,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [RadarResponse]
  factory RadarResponse.fromJson(Map<String, dynamic> json) =>
      _$RadarResponseFromJson(json);

  /// Converts a [RadarResponse] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$RadarResponseToJson(this);

  final ResponseMetadata meta;

  @override
  List<Object?> get props => [meta];
}
