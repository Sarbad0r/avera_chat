import 'dart:math';

import 'package:avera_chat/helpers/constants.dart';
import 'package:avera_chat/widgets/bottom_chat_widget.dart';
import 'package:avera_chat/widgets/chat_container.dart';
import 'package:avera_chat/widgets/chat_screen_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rnd = Random();
    List<bool> random = [];
    for (int i = 0; i < 10; i++) {
      random.add(rnd.nextBool());
    }
    return Scaffold(
      backgroundColor: appColor,
      body: Column(children: [
        const ChatScreenTopBar(),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: ListView(children: [
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ChatContainer(
                      text:
                          '1aijsdlkajdjasdjlasjldjlasjdlasjldjasldjlasjdjlasdjlasjlkjdlaskdjasld212',
                      left: random[index]);
                })
          ]),
        )),
        const BottomChatWidget()
      ]),
    );
  }
}
