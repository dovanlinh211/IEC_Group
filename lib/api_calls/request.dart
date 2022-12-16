import 'package:iec_group/constants/app_string.dart';

abstract class Request {
  static const host = ReleaseMode.debug?AppConstantsDebug.url:AppConstantsUAT.url;

  static const _authentication = 'Authorization';
  static const _bearer = 'Bearer ';

  String getUrl();

  String getBody();

  Map<String, String> getHeaders();

  static String createUrl(String version, String path) {
    return '$host$version/$path';
  }
  static String createUrlwithId(String version, String path, String id) {
    return '$host$version/$path/$id';
  }

  static String createGetUrl(
      String version, String path, Map<String, dynamic> parameters) {
    final uri = Uri.parse(createUrl(version, path));
    final ret = uri.replace(queryParameters: parameters);
    return ret.toString();
  }
  static String createGetUrlwithId(
      String version, String path, String id, Map<String, dynamic> parameters) {
    final uri = Uri.parse(createUrlwithId(version, path, id));
    final ret = uri.replace(queryParameters: parameters);
    return ret.toString();
  }

  static String urlEncodeForFormData(Map<String, String> map) {
    return map.keys
        .map((key) =>
    '${Uri.encodeComponent(key)}=${Uri.encodeComponent(map[key])}')
        .join('&');
  }

  static Map<String, String> createAuthHeader(String token) {
    final authHeader = <String, String>{};
    if (token != null) {
      authHeader[_authentication] = '$_bearer$token';
    }
    return authHeader;
  }

  static Map<String, String> toParamMap(String key, List<String> list) {
    final ret = <String, String>{};
    list.asMap().forEach((index, value) {
      ret['$key[$index]'] = value.toString();
    });
    return ret;
  }
}
