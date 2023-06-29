import 'package:chatflutterapp/chat_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Talk Chat'),
      ),
      body: ChatScreen(),
    );
  }
}
