import 'package:flutter/material.dart';
import 'package:kcom/Components/Chat_Card2.dart';
import 'package:intl/intl.dart';

class MessageBody extends StatefulWidget {
  MessageBody({Key? key}) : super(key: key);

  @override
  State<MessageBody> createState() => _MessageBody();
}

class _MessageBody extends State<MessageBody> {
  final myController = TextEditingController();
  final myTextViewController = TextEditingController();
  FocusNode myFocusNode = FocusNode();

  @override
  void dispose() {
    myController.dispose();
    myTextViewController.dispose();
    super.dispose();
  }

  List messages = [];
  AddMessage(message) {
    DateTime dateTime = DateTime.now();
    String formattedTime = DateFormat('kk:mm a').format(dateTime);
    String formattedDate = DateFormat('MMMM, EEE d, yyyy').format(dateTime);
    if (message.toString().length == 0) return;
    messages.add(ChatCard2(
        message: message,
        time: formattedTime,
        date: formattedDate,
        username: "Hamaya Toyo"));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            //padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.all(1),
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) => messages[index],
            ),
          ),
        ),
        //ChatInputField(),
        //Message Input Container
        Container(
          padding:
              const EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 10),
          child: TextField(
            autofocus: true,
            focusNode: myFocusNode,
            controller: myController,
            onSubmitted: (value) {
              setState(() {
                AddMessage(value);
                myController.clear();
                myFocusNode.requestFocus();
              });
            },
            decoration: InputDecoration(
              suffixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12.0),
                  child: GestureDetector(
                      child: const Icon(Icons.send),
                      onTap: () => {
                            setState(() {
                              AddMessage(myController.text);
                              myController.clear();
                              myFocusNode.requestFocus();
                            }),
                          })),
              //suffixIcon: Icon(Icons.send),
              hintText: "What's on your mind.",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
      ],
    );
  }
}
