import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geometry.g.dart';

@JsonSerializable()
class Geometry extends Equatable {
  const Geometry({
    this.type,
    this.coordinates,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [Geometry]
  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  /// Converts a [Geometry] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$GeometryToJson(this);

  final String? type;
  final List<num>? coordinates;

  @override
  List<Object?> get props => [type, coordinates];
}
