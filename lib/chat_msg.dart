import 'package:flutter/material.dart';


const String _name = 'Prince';

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key, required this.text}) : super(key: key);



  final String text;
  // ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name, style: Theme.of(context).textTheme.subtitle1),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(text),
              )
            ],
          ),
        ],
      ),
    );
  }
}
