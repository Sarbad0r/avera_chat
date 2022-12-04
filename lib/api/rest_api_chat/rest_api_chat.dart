import 'package:avera_chat/api/api_connections.dart';
import 'package:http/http.dart' as http;
import 'package:web_socket_channel/web_socket_channel.dart';

class RestApiChat {
  static Future<void> getDate() async {
    try {
      final channel =
          WebSocketChannel.connect(Uri.parse('ws://192.168.100.113:6001'));
      print(channel.sink);
    } catch (e) {
      print(e);
    }
  }
}
