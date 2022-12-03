// ignore_for_file: constant_identifier_names

import 'package:avera_chat/helpers/shared_prefer.dart';

class ApiConnections {
  static const String URL = "http://192.168.100.113:8000/api";

  static Future<Map<String, String>> headers() async {
    return <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${await SharedPrefer.getToken()}',
    };
  }
}
