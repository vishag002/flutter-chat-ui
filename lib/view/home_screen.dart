import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //chat user
  ChatUser user = ChatUser(
    id: '1',
    firstName: 'Charles',
    lastName: 'Leclerc',
  );
  //chat bot
  ChatUser bot = ChatUser(
    id: '2',
  );
  //list of messages
  List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: 'how can i help u',
      user: ChatUser(id: '2'),
      createdAt: DateTime.now(),
    ),
  ];
  //chat user
  List<ChatUser> typeingmess = <ChatUser>[];
  getdata(ChatMessage m) async {
    typeingmess.add(bot);
    messages.insert(0, m);
    setState(() {});
    await Future.delayed(Duration(seconds: 3));
    //
    ChatMessage data = ChatMessage(
      user: bot,
      createdAt: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat app"),
        centerTitle: true,
      ),
      body: DashChat(
          typingUsers: typeingmess,
          currentUser: ChatUser(id: '1'),
          inputOptions: InputOptions(
            alwaysShowSend: true,
          ),
          onSend: (ChatMessage mesData) {
            setState(() {
              messages.insert(0, mesData);
            });
          },
          messages: messages,
          readOnly: false),
    );
  }
}
