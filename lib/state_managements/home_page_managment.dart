import 'package:avera_chat/api/api_connections.dart';
import 'package:flutter/cupertino.dart';
import 'package:pusher_client/pusher_client.dart';

class HomePageProvider extends ChangeNotifier {
  PusherClient? pusher;
  Channel? channel;

  void reciveMessage() async {
    PusherOptions options = PusherOptions(
      host: '192.168.100.113',
      wsPort: 6001,
      encrypted: false,
      // auth: PusherAuth(
      //   'http://example.com/auth',
      //   headers: await ApiConnections.headers(),
      // ),
    );
    try {
      pusher = PusherClient('870eabe5fa65630f1eb6', options,
          autoConnect: false, enableLogging: true);
    } catch (e) {
      print(e);
    }

    pusher?.connect();

// Bind to listen for events called "order-status-updated" sent to "private-orders" channel
    channel?.bind("new_event", (PusherEvent? event) {
      print(event?.data);
    });
  }

  void initChannel() {
  
  }

  void disconnectPusher() async {
    pusher?.disconnect();
  }
}
