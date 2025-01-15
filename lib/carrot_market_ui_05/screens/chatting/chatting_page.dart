import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/models/chat_message.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/screens/chatting/components/chat_container.dart';

import '../components/appbar_preferred_size.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅'),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          ...List.generate(
            chatMessageList.length,
            (index) {
              return ChatContainer(chatMessage: chatMessageList[index]);
            },
          ),
        ],
      ),
    );
  }
}
