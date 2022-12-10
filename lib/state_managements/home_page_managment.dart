import 'package:flutter/cupertino.dart';
import 'package:pusher_client/pusher_client.dart';

class HomePageProvider extends ChangeNotifier {
  List<String> messagesList = [];
  Channel? channel;
  PusherClient? pusher;
  Future<void> initPusher() async {
    try {
      pusher =
          PusherClient('3492cb8d8a052cdc3a74', PusherOptions(cluster: 'mt1'));
      pusher?.connect();
      pusher?.onConnectionStateChange((state) {
        print(state?.currentState);
      });
      pusher?.onConnectionError((error) {
        print(error?.message);
      });

      channel = pusher?.subscribe('private-my_channel');
      channel?.bind('my_event', (event) {
        print("data:::: ${event?.data}");
        messagesList.add(event?.data ?? '');
        notifyListeners();
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> sendingMessage() async {
    channel = pusher?.subscribe('my_channel');
  }
}
