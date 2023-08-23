// ignore_for_file: prefer_const_constructors
import 'package:radar_api/radar_api.dart';
import 'package:test/test.dart';

void main() {
  group('RadarApi', () {
    test('can be instantiated', () {
      expect(RadarApi(accessToken: 'token'), isNotNull);
    });
  });
}
