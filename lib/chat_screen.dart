import 'package:chatflutterapp/chat_msg.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

final TextEditingController _textController = new TextEditingController();
final List<ChatMessage> _messages = <ChatMessage> [];

void _handleSubmitted(String text){
  _textController.clear();
  ChatMessage message = new ChatMessage(text: text);

  setState(() {
    _messages.insert(0, message);
  });
}

void setState(Null Function() param0) {
}




Widget _TextComposerWidget(){
  return new Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(
      children: [
        Flexible(
          child: new TextField(
            decoration:  InputDecoration.collapsed(
              hintText: 'send a message',
            ),
            controller: _textController,
            onSubmitted: _handleSubmitted,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          child: IconButton(onPressed: () => _handleSubmitted(_textController.text),
              icon: Icon(Icons.send)
          ),
          ),
      ],
    ),
  );
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return _TextComposerWidget();
  }
}
