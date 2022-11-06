import 'dart:convert';

import 'package:booking/config/config.dart';
import 'package:booking/config/networking/base_response.dart';
import 'package:booking/data/endpoint/endpoint.dart';
import 'package:booking/domain/repository/repository.dart';

class AuthController implements AuthRepository {
  final ApiClient _client = ApiClient();

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(Endpoint.forgotPassword),
      body: {
        'email': email,
      },
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(Endpoint.login),
      body: {
        'email': email,
        'password': password,
      },
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }

  @override
  Future<void> logout() async {
    await _client.post(
      Uri.parse(Endpoint.logout),
      body: {},
    );
  }

  @override
  Future<BaseResponse> register(
      String email, String password, String name) async {
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(Endpoint.register),
      body: {
        'email': email,
        'password': password,
        'name': name,
      },
    );
    if (response.statusCode < 500) {
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      baseResponse = BaseResponse(message: response.body);
    }
    return baseResponse;
  }
}
