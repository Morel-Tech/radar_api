import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_metadata.g.dart';

@JsonSerializable()
class ResponseMetadata extends Equatable {
  const ResponseMetadata({
    required this.code,
  });

  /// Converts a [Map]<[String], [dynamic]> to a [ResponseMetadata]
  factory ResponseMetadata.fromJson(Map<String, dynamic> json) =>
      _$ResponseMetadataFromJson(json);

  /// Converts a [ResponseMetadata] to a [Map]<[String], [dynamic]>
  Map<String, dynamic> toJson() => _$ResponseMetadataToJson(this);

  final int code;

  @override
  List<Object?> get props => [code];
}
