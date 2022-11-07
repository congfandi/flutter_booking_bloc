import 'dart:convert';

import 'package:booking/config/config.dart';
import 'package:booking/data/endpoint/endpoint.dart';
import 'package:booking/domain/repository/repository.dart';

class TripController implements TripRepository {
  final ApiClient _client = ApiClient();
  final HttpState httpState;

  TripController(this.httpState);

  @override
  Future<BaseResponse> detailTrips(int id) async {
    String url = "${Endpoint.trip}/$id";
    String method = "GET";
    httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(url),
    );

    httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> getTrips() async {
    String url = Endpoint.trip;
    String method = "GET";
    httpState.onStartRequest(url, method);

    late final BaseResponse baseResponse;
    final response = await _client.get(
      Uri.parse(Endpoint.trip),
    );
    httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        httpState.onSuccessRequest(url, method);
      } else {
        httpState.onErrorRequest(url, method);
      }
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
