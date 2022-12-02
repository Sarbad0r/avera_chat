import 'package:avera_chat/helpers/constants.dart';
import 'package:avera_chat/widgets/app_top_bar.widget.dart';
import 'package:avera_chat/widgets/user_chats_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(screenPixel(20));

    return Scaffold(
      backgroundColor: appColor,
      body: SafeArea(
          child: Column(children: const [
        AppTopBar(),
        UserChatsList()
      ])),
    );
  }
}
