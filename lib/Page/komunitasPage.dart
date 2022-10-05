import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kcom/Page/ChatPage.dart';
import 'package:kcom/Components/Chat_Card1.dart';
import 'package:kcom/Components/Chat_Card2.dart';
import 'package:intl/intl.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class komunitasPage extends StatefulWidget {
  komunitasPage({Key? key}) : super(key: key);

  @override
  State<komunitasPage> createState() => _komunitasPage();
}

class _komunitasPage extends State<komunitasPage> {
  final myController = TextEditingController();
  final myTextViewController = TextEditingController();
  FocusNode myFocusNode = FocusNode();

  final _channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  @override
  void dispose() {
    _channel.sink.close();
    myController.dispose();
    myTextViewController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (myController.text.isNotEmpty) {
      _channel.sink.add(myController.text);
    }
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
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            const Image(
              width: double.infinity,
              height: 150,
              image: AssetImage("assets/images/komunitas.png"),
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 87,
                ),
                //Comunity Line
                Row(
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    const Text(
                      "Community",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 112,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ChatPage(),
                          ),
                        );
                      }),
                      child: const Icon(
                        CupertinoIcons.chat_bubble_2_fill,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                //Space_Margin Top
                const SizedBox(
                  height: 10,
                ),

                //Rounded Top Tip
                Container(
                  width: double.infinity,
                  height: 25,
                  decoration: const BoxDecoration(
                      color: Color(0xFFfafafa),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                ),

                //Message Input Container
                Container(
                  padding: const EdgeInsets.only(
                      top: 0, right: 20, left: 20, bottom: 20),
                  child: TextField(
                    autofocus: true,
                    focusNode: myFocusNode,
                    controller: myController,
                    onSubmitted: (value) {
                      setState(() {
                        AddMessage(value);
                        myController.clear();
                        myFocusNode.requestFocus();
                        _sendMessage();
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
                                      _sendMessage();
                                    }),
                                  })),
                      //suffixIcon: Icon(Icons.send),
                      hintText: "What's on your mind.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

                //Main Message Container
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          StreamBuilder(
                            stream: _channel.stream,
                            builder: (context, snapshot) {
                              return Text(
                                  snapshot.hasData ? '${snapshot.data}' : '');
                            },
                          ),
                          if (messages.length > 0)
                            messages[0].setShowTimebar(true),
                          for (int i = 1; i < messages.length; i++)
                            messages[i].setShowTimebar(false),
                          //for (var val in messages) val.setShowTimebar(false);
                        ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
