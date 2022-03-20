import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: 70,
          child: Row(children: [
            Icon(Icons.abc_sharp),
            Column(
              children: [
                Text('Имя человека',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                Text('Последнее сообщение',
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            )
          ]),
        );
      }),
    );
  }
}
