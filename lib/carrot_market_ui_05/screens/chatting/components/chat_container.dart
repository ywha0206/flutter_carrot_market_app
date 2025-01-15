import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/models/chat_message.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/screens/components/image_container.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 25.0,
            height: 50.0,
            width: 50.0,
            imageUrl: chatMessage.profileImage,
          ),
        ],
      ),
    );
  }
}
