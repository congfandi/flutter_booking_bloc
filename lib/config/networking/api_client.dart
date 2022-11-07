import 'dart:convert';

import 'package:booking/utils/helper/pref_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

class ApiClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    Logger.root.info(
        '============================REQUEST============================');

    if (PrefHelper.instance.token.isNotEmpty) {
      request.headers
          .addAll({"Authorization": "Bearer ${PrefHelper.instance.token}"});
    }

    Logger.root.info('${request.method} ${request.url}');
    Logger.root.info('${request.headers}');

    return request.send().then((value) {
      return value;
    }).catchError((err) async {
      debugPrint(err.toString());
      return http.StreamedResponse(
          Stream.fromIterable([err.toString().codeUnits]), 500);
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then((value) {
      Logger.root.info(
          "============================RESPONSE============================");
      Logger.root.info(value.body);
      Logger.root.info(
          "================================================================");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      Logger.root.info(
          "============================RESPONSE============================");
      Logger.root.info(value.body);
      Logger.root.info(
          "================================================================");
      return value;
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }
}
