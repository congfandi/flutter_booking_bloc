import 'dart:convert';

import 'package:booking/config/config.dart';
import 'package:booking/config/networking/base_response.dart';
import 'package:booking/data/endpoint/endpoint.dart';
import 'package:booking/domain/repository/repository.dart';

class TripController implements TripRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> detailTrips(int id) async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse("${Endpoint.trip}/$id"),
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(Endpoint.trip),
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
