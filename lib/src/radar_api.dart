import 'package:dio/dio.dart';
import 'package:radar_api/radar_api.dart';
import 'package:retrofit/retrofit.dart';

part 'radar_api.g.dart';

/// {@template radar_api}
/// A client wrapper for the Radar REST API
/// {@endtemplate}
@RestApi()
abstract class RadarApi {
  /// {@macro radar_api}
  factory RadarApi({
    required String accessToken,
    String baseUrl = 'https://api.radar.io/',
  }) =>
      _RadarApi(
        Dio(
          BaseOptions(
            headers: {'Authorization': accessToken},
            contentType: 'application/json',
            baseUrl: baseUrl,
          ),
        ),
      );

  @GET('v1/search/autocomplete')
  Future<AutocompleteResponse> autocomplete({
    @Query('query') required String query,
    @Query('near') String? near,
    @Query('layers') String? layers,
    @Query('limit') num? limit,
    @Query('country') String? country,
    @Query('expandUnits') bool? expandUnits,
  });

  @GET('v1/geocode/forward')
  Future<ForwardGeocodeResponse> forwardGeocode({
    @Query('query') String query,
    @Query('layers') String? layers,
    @Query('country') String? country,
  });
}
