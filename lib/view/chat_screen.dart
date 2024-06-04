import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //chat user
  ChatUser user1 = ChatUser(
    id: '1',
    firstName: 'vishag',
  );
  ChatUser user2 = ChatUser(
    id: '1',
    firstName: 'vishag',
  );
  //message list
  List<ChatMessage> messages=<ChatMessage>[
    ChatMessage(user: ChatUser(id: '1'),
    text: "my message",
    createdAt: DateTime.now(),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.amber,
        child: DashChat(
          currentUser: ChatUser(id: '1'),
          onSend: (message) {
            
          },
          messages: ,
        ),
      ),
    );
  }
}
