import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/models/chat_message.dart';
import 'package:flutter_carrot_market_app/carrot_market_ui_05/screens/components/image_container.dart';

import '../../../theme.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatContainer({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
              child: ImageContainer(
                borderRadius: 25.0,
                height: 50.0,
                width: 50.0,
                imageUrl: chatMessage.profileImage,
              ),
            ),
            Container(
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          chatMessage.sender,
                          style: textTheme().bodyLarge,
                        ),
                        Text('${chatMessage.location}·${chatMessage.sendDate}'),
                      ],
                    ),
                    Text(
                      chatMessage.message,
                      style: textTheme().bodyLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Visibility(
                visible: chatMessage.imageUri != null,
                child: ImageContainer(
                  borderRadius: 10.0,
                  height: 50.0,
                  width: 50.0,
                  imageUrl: chatMessage.imageUri ?? '',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
