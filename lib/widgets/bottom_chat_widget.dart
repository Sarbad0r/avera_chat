import 'package:avera_chat/helpers/constants.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;

class BottomChatWidget extends StatelessWidget {
  const BottomChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100]),
      padding: const EdgeInsets.all(10),
      child: Row(children: [
        const SizedBox(width: 10),
        Expanded(
            child: TextField(
                cursorColor: appColor,
                maxLines: 2,
                onSubmitted: (v) => print(v),
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    hintText: 'Сообщение',
                    hintStyle: TextStyle(fontSize: 18),
                    border: InputBorder.none))),
        Row(children: [
          Row(children: [
            IconButton(
                onPressed: () => [], icon: Icon(Icons.image, color: appColor)),
            const SizedBox(width: 10),
            IconButton(
                onPressed: () => [], icon: Icon(Icons.mic, color: appColor)),
            const SizedBox(width: 10),
            IconButton(
                onPressed: () => [], icon: Icon(Icons.send, color: appColor))
          ])
        ])
      ]),
    );
  }
}
