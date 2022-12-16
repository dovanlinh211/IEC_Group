import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:iec_group/constants/current_locale.dart';

class RequestClient {
  factory RequestClient() {
    _instance ??= RequestClient._internal();
    return _instance;
  }

  RequestClient._internal() {
    _client = http.Client();
  }

  static const String userAgent = 'User-Agent';
  static const String contentType = 'Content-Type';
  static const String accept = 'Accept';
  static const String locale = 'locale';

  static RequestClient _instance;
  http.Client _client;

  Future<Map<String, String>> _createCommonHeader() async {
    final common = <String, String>{};
    common[accept] = ContentType.json.toString();
    common[locale] = currentLocale ?? "ja";
    return common;
  }

  Future<Map<String, String>> _createHeader() async {
    final common = <String, String>{};
    common[contentType] = ContentType.json.toString();
    return common;
  }

  Future<http.Response> get(String url, Map<String, String> headers) async {
    debugPrint('-------------------------------');
    debugPrint('GET Request');
    debugPrint(url);
    debugPrint(headers.toString());
    debugPrint('-------------------------------');
    headers.addAll(await _createCommonHeader());

    final response = await _client.get(Uri.parse(url), headers: headers);
    return response;
  }

  Future<http.Response> post(
      String url, Map<String, String> headers, String body) async {
    headers.addAll(await _createCommonHeader());

    final response = await _client.post(Uri.parse(url),
        headers: headers, body: body, encoding: Encoding.getByName('utf-8'));

    return response;
  }

  Future<http.Response> postJson(
      String url, Map<String, String> headers, String body) async {
    headers..addAll(await _createCommonHeader())..addAll(await _createHeader());

    final response = await _client.post(Uri.parse(url),
        headers: headers, body: body, encoding: Encoding.getByName('utf-8'));
    return response;
  }

  Future<http.Response> put(
      String url, Map<String, String> headers, String body) async {
    headers.addAll(await _createCommonHeader());

    final response = await _client.put(Uri.parse(url),
        headers: headers, body: body, encoding: Encoding.getByName('utf-8'));
    return response;
  }

  Future<http.StreamedResponse> upload(http.MultipartRequest request) async {
    final response = await _client.send(request);
    return response;
  }

  Future<http.Response> delete(String url, Map<String, String> headers) async {
    headers.addAll(await _createCommonHeader());
    final response = await _client.delete(Uri.parse(url), headers: headers);
    return response;
  }
}
