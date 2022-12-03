import 'package:avera_chat/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreenTopBar extends StatelessWidget {
  const ChatScreenTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: screenPixel(10), top: screenPixel(30)),
        padding: EdgeInsets.only(left: screenPixel(10), right: screenPixel(10)),
        color: appColor,
        child: Column(children: [
          SizedBox(height: screenPixel(30)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Row(children: [
                IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Icons.arrow_back_ios_new,
                        size: 25, color: Colors.white)),
                const SizedBox(width: 15),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50)),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Carmen Mayers',
                          style: textStyle(Colors.white, 18),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Online',
                          style: textStyle(Colors.white, 13,
                              weight: FontWeight.w200),
                        )
                      ]),
                )
              ]),
            ),
            IconButton(
                onPressed: () => [],
                icon: const Icon(
                  Icons.more_vert,
                  size: 25,
                  color: Colors.white,
                ))
          ]),
        ]));
    ;
  }
}
