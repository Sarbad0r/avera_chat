import 'package:avera_chat/helpers/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  final String text;
  final bool left;
  const ChatContainer({Key? key, required this.text, required this.left})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:
            left ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment:
                left ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: left == true
                        ? leftBorderRadius()
                        : rigthBorderRadius()),
                child: Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              Padding(
                padding: left
                    ? const EdgeInsets.only(left: 10)
                    : const EdgeInsets.only(right: 10),
                child: const Text('12:20'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
